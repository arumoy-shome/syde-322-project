module ApplicationHelper
  def avatar_url(user)
    if user.image_url.present?
      user.image_url
    else
    	"default.png"
    end
  end
end
