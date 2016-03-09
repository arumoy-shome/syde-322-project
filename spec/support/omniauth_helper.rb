module OmniauthHelper
  def self.auth_hash
    {
      provider: "facebook",
      uid: "1234567",
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
      info: {
        email: "",
        name: "Dummy Name",
        image: "http://graph.facebook.com/dummy_image"
      }
    }
  end
end
