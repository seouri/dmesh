class Page < ActiveRecord::Base
  belongs_to :book, :counter_cache => true
  has_many :lines, :order => :tree_number
  
  def progress
    if lines_count == 0 and is_done == false
      return "fresh"
    elsif lines_count > 0 and is_done == false
      return "inprogress"
    elsif is_done == true
      return "done"
    end
  end
end
