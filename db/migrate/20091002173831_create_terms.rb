class CreateTerms < ActiveRecord::Migration
  def self.up
    create_table :terms do |t|
      t.string :string, :null => false
      t.timestamps
    end
    add_index :terms, [:string], :unique => true
  end

  def self.down
    drop_table :terms
  end
end
