module ApplicationHelper
  def pages_number index, page
    page ||= 1
    index.to_i + (page.to_i - 1) * Settings.page.page_number_admin + 1
  end

  def comment_user? comment
    current_user.id == comment.user_id
  end
end
