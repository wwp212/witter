module ApplicationHelper

  #Changes title return if need be
  def full_title(page_title)
    base_title = "Micro"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
