class Authorization < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, scope: :provider

  def self.find_from_hash(hash)
    find_by_provider_and_uid(hash[:provider], hash[:uid])
  end

  def self.create_from_hash(hash, user = nil)
    user ||= User.create_from_hash!(hash)

    Authorization.create(user: user, uid: hash[:uid], provider: hash[:provider],
                        token: hash[:credentials][:token],
                        refresh_token: hash[:credentials][:refresh_token],
                        expires_at: Time.at(
                          hash[:credentials][:expires_at]).to_datetime
                        )
  end

  def request_token_from_google
    url = URI("https://accounts.google.com/o/oauth2/token")
    Net::HTTP.post_form(url, self.google_to_params)
  end

  def refresh!
    response = request_token_from_google
    data = JSON.parse(response.body)
    update_attributes(
      token: data["access_token"],
      expires_at: Time.now + (data["expires_at"].to_i).seconds
    )
  end

  def expired?
    expires_at < Time.now
  end

  def fresh_token
    refresh! if expired?
    token
  end

  def google_to_params
    {
      "refresh_token" => refresh_token,
      "client_id" => "994748866932-7kjt7fhipagmcnu65i1otnl4fmvhdp9s" \
      ".apps.googleusercontent.com",
      "client_secret" => "VhbOQPFuYJGIEzZ5dsbGFzD2",
      "grant_type" => "refresh_token"
    }
  end
end
