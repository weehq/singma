module ApplicationHelper

  def h2
    title = page_title.gsub(/(.*)(\s\-.+)$/, '\1') # Remove business name at the end and only display the page title
    title.gsub(/(.*\-\s)(.*)$/, '\2') # Remove main page title if sub page title exists
  end

end