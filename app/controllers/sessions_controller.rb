class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    render text: request.env['omniauth.auth'].inspect
  end

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end

