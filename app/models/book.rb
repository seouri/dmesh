class Book < ActiveRecord::Base
  has_many :pages, :order => :id
  has_many :lines, :order => :tree_number
end
