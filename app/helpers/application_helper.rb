module ApplicationHelper
  
  def user_signed_in_msg
    if current_user && current_user.admin?
      return "Admin"
    else
      return current_user.email
    end
  end
end
