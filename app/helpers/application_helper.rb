module ApplicationHelper

  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def guid_generator(length)
    [('A'..'Z').to_a, ('a'..'z').to_a, (0..9).to_a].flatten.shuffle.join[0..length-1]
  end
end
