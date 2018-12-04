module ApplicationHelper
  def pages_number index, pages
    pages ||= 1
    index.to_i + (pages.to_i - 1) * Settings.page.page_number_user + 1
  end
end
