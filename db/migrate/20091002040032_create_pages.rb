class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :book_id
      t.string :name
      t.boolean :is_done, :default => false
      t.integer :lines_count, :default => 0
      t.timestamps
    end
    add_index :pages, [:book_id, :name]
  end

  def self.down
    drop_table :pages
  end
end
