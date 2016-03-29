module PostsHelper
  def user_authorized_post?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end
  
  def user_authorized_post_moderator?(post)
    current_user && (current_user == post.user || current_user.admin? || current_user.moderator?)
  end
end
