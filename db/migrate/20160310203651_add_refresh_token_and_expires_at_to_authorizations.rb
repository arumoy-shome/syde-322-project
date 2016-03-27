class AddRefreshTokenAndExpiresAtToAuthorizations < ActiveRecord::Migration
  def change
    add_column :authorizations, :refresh_token, :string
    add_column :authorizations, :expires_at, :string
  end
end
