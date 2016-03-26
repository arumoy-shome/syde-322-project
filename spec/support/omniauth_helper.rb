module OmniauthHelper
  def self.auth_hash
    {
      provider: "facebook",
      uid: "1234567",
      credentials: {
        token: "abcqwefghiopghvnk",
        refresh_token: "abcqwef2345ghiopghvnk3456",
        expires_at: Time.now
      },
      info: {
        email: "dummy@example.com",
        name: "Dummy Name",
        image: "http://graph.facebook.com/dummy_image"
      }
    }
  end

  def self.incorrect_hash
    {
      provider: "",
      uid: "1234567",
      credentials: {
        token: "abcqwefghiopghvnk",
        refresh_token: "abcqwef2345ghiopghvnk3456",
        expires_at: Time.now
      },
      info: {
        email: "",
        name: "Dummy Name",
        image: "http://graph.facebook.com/dummy_image"
      }
    }
  end
end
