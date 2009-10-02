# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
(1963 .. 1996).each do |year|
  book = Book.create(:title => year)
  (1 .. 30).each do |page|
    page = book.pages.create(:name => page)
  end
end
