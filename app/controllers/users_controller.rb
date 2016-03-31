class UsersController < ApplicationController
  def tutor
    @tutors = User.find_tutor(params[:search])
  end

  def edit
    if current_user.is_tutor.nil?
      @user = current_user
    else
      redirect_to user_path(current_user)
    end
  end

  def show
    @user = User.find(params[:id])
    session[:feedback_for_id] = @user.id
    session[:calendar_for_id] = @user.id
    session[:event_for_id] = @user.id
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(is_tutor: params[:is_tutor])
      flash[:notice] = "Successfully saved changes, welcome #{current_user.name}"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Something went wrong :("
      render "edit"
    end
  end
end
