class SessionsController < ApplicationController
  def create
    unless @auth = Authorization.find_from_hash(auth_hash)
      @auth = Authorization.create_from_hash(
        auth_hash, User.find_from_hash(auth_hash)
      )
    end

    self.current_user = @auth.user

    flash[:notice] = "Successfully Signed In As #{current_user.name}"
    redirect_to user_path(current_user)
  end

  def destroy
    session[:user_id] = nil

    flash[:notice] = "Successfully Signed Out"
    redirect_to root_path
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end

