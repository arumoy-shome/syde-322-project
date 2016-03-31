class UsersController < ApplicationController
  def tutor
    @tutors = User.find_tutor(params[:search])
  end

  def show
    @user = User.find(params[:id])
    session[:feedback_for_id] = @user.id
    session[:calendar_for_id] = @user.id
    session[:event_for_id] = @user.id
  end
end
