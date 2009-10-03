class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.integer :pages_count, :default => 0

      t.timestamps
    end
    add_index :books, :title, :unique => true
  end

  def self.down
    drop_table :books
  end
end
