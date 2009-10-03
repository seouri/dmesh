class CreateLines < ActiveRecord::Migration
  def self.up
    create_table :lines do |t|
      t.integer :page_id, :null => false
      t.integer :term_id, :null => false
      t.string :tree_number, :null => false
      t.timestamps
    end
    add_index :lines, :page_id
  end

  def self.down
    drop_table :lines
  end
end
