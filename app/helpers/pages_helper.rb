module PagesHelper
  def elapsed_time(page)
    min = page.lines.size == 0 ? 0 : page.lines.map {|l| l.created_at }.min
    max = page.lines.size == 0 ? 0 : page.lines.map {|l| l.created_at }.max
    distance_of_time_in_words(min, max)
  end
end
