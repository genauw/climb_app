module ApplicationHelper
  # Returns a full title for each page if one is not provided
  def full_title(page_title = '')
    base_title = "Climb Together"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
