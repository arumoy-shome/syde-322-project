class UsersController < ApplicationController
  def tutor
    @tutors = User.find_tutor(params[:search])
  end

  def show
    @user = User.find(params[:id])
    if signed_in? && current_user.is_tutor.nil?
      redirect_to setup_path
    end
  end

  def update
    current_user.is_tutor = true
    flash[:notice] = "Successfully is tutored"
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:is_tutor)
  end
end
