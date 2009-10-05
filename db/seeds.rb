# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
pages = [
  [1963, 152, 317],
  [1964, 200, 365],
  [1965, 158, 331],
  [1966, 168, 363],
  [1967, 182, 385],
  [1968, 204, 413],
  [1969, 212, 425],
  [1970, 218, 422],
  [1971, 218, 424],
  [1972, 224, 436],
  [1973, 240, 457],
  [1974, 250, 471],
  [1975, 1, 428],
  [1976, 361, 792],
  [1977, 1, 458],
  [1978, 1, 419],
  [1979, 1, 429],
  [1980, 1, 439],
  [1981, 1, 444],
  [1982, 1, 446],
  [1983, 1, 443],
  [1984, 1, 441],
  [1985, 461, 904],
  [1986, 1, 446],
  [1987, 489, 950],
  [1988, 1, 470],
  [1989, 1, 492],
  [1990, 557, 1070],
  [1992, 1, 796],
  [1993, 695, 1346],
  [1994, 3, 865],
  [1995, 3, 937],
  [1996, 3, 833]
  ]
pages.each do |p|
  book = Book.create(:title => p[0])
  (p[1] .. p[2]).each do |page|
    p = book.pages.create(:name => page)
  end
end

File.foreach(File.join(File.dirname(__FILE__), 'terms.dat')) do |term|
  Term.create(:string => term.rstrip)
end