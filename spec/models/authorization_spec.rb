require "rails_helper"

describe Authorization, ".find_from_hash" do
  context "sucessfully" do
    it "finds an authorization using the provided hash" do
      hash = OmniauthHelper.auth_hash
      user = create(:user)
      authorization = create(:authorization, provider: hash[:provider], uid:
                             hash[:uid], user_id: user.id, token:
                             hash[:credentials][:token], refresh_token:
                             hash[:credentials][:refresh_token],
                             expires_at: hash[:credentials][:expires_at])
      result = Authorization.find_from_hash(hash)

      expect(result).to eq(authorization)
    end
  end

  context "unsucessfully" do
    it "returns nil" do
      hash = OmniauthHelper.incorrect_hash
      result = Authorization.find_from_hash(hash)

      expect(result).to be_nil
    end
  end
end

describe Authorization, ".create_from_hash" do
  context "sucessfully" do
    it "creates a new authorization from the given hash and user" do
      hash = OmniauthHelper.auth_hash
      user = create(:user)
      @authorization = Authorization.create_from_hash(hash, user)

      expect(@authorization.save).to be true
    end
  end

  context "unsucessfully" do
    it "does not create a new authorization" do
      hash = OmniauthHelper.incorrect_hash
      user = create(:user)
      @authorization = Authorization.create_from_hash(hash, user)

      expect(@authorization.save).to be false
    end
  end
end
