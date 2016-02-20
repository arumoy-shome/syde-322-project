module ApplicationHelper
  def avatar_url(user)
    if user.image_url.present?
      user.image_url
    else
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
    end
  end
end
