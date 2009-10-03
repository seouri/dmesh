class Line < ActiveRecord::Base
  belongs_to :page, :counter_cache => true
  belongs_to :term
  
  validates_associated :page, :term
  validates_presence_of :page_id, :term_id, :tree_number
  validates_format_of :tree_number, :with => /^[A-Z](\d+)?(\.\d{1,3})*$/
  validates_uniqueness_of :tree_number, :scope => :page_id
  validates_uniqueness_of :term_id, :scope => :page_id

  def level
    tree_number.length == 1 ? 0 : tree_number.split(/\./).size
  end
end