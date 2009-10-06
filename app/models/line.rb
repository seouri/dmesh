class Line < ActiveRecord::Base
  belongs_to :book, :counter_cache => true
  belongs_to :page, :counter_cache => true
  belongs_to :term, :counter_cache => true
  
  before_validation :format_tree_number
  
  validates_associated :page, :term
  validates_presence_of :page_id, :term_id, :tree_number
  validates_format_of :tree_number, :with => /^[A-Z](\d{2})?(\.\d{3})*$/
  validates_uniqueness_of :tree_number, :scope => :book_id

  def level
    tree_number.length == 1 ? 0 : tree_number.split(/\./).size
  end
  
  private
    def format_tree_number
      self.tree_number.strip!
      self.tree_number.upcase!
      digit = self.tree_number.split(/\./)
      top = digit.shift
      top.gsub!(/^([A-Z])(\d)$/, '\1' + '0\2')
      digit.map! {|d| d.length == 3 ? d : sprintf("%03d", d)}
      digit.unshift(top)
      self.tree_number = digit.join(".")
    end
end
