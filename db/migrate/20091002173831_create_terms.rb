class CreateTerms < ActiveRecord::Migration
  def self.up
    create_table :terms do |t|
      t.string :string, :null => false
      t.integer :lines_count, :default => 0
      t.timestamps
    end
    add_index :terms, [:string]
  end

  def self.down
    drop_table :terms
  end
end
