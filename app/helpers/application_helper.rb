module ApplicationHelper


  def user_logged_in?
    user_signed_in?
  end

  def resource_name
    :user
  end

end
