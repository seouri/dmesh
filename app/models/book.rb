class Book < ActiveRecord::Base
  has_many :pages, :order => :id
end
