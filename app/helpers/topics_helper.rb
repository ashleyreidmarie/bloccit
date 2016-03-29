module TopicsHelper
  def user_admin?
    current_user && current_user.admin?
  end
  
  def user_moderator_or_admin?
    current_user &&  (current_user.admin? || current_user.moderator?)
  end
end
