class UsersController < ApplicationController
  def tutor
    @tutors = User.find_tutor(params[:search])
  end

  def show
    @user = User.find(params[:id])
  end
end
