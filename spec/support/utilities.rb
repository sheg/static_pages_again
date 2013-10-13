def full_title(page_title)
  base_title = "Sheg's App"
  unless page_title.empty?
    "#{base_title} | #{page_title}"
  else
    base_title
  end
end