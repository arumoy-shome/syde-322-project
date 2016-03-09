require "rails_helper"

describe User, ".create_from_hash!" do
  context "sucessfully" do
    it "creates a new user from the given hash" do
      hash = OmniauthHelper.auth_hash
      @user = User.create_from_hash!(hash)

      expect(@user.save).to be true
    end
  end

  context "unsucessfully" do
    it "does not create a new user" do
      hash = OmniauthHelper.incorrect_hash
      @user = User.create_from_hash!(hash)

      expect(@user.save).to be false
    end
  end
end
