class Term < ActiveRecord::Base
  has_many :lines

  validates_presence_of :string
  validates_length_of :string, :minimum => 1
  validates_format_of :string, :with => /^\S.+\S$/
  validates_uniqueness_of :string
end
