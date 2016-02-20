module ApplicationHelper
  def avatar_url(user)
    if user.image_url.present?
      user.image_url
    else
      default_url = "users/default_image.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?" \
      "s=48&d=#{CGI.escape(default_url)}"
    end
  end
end
