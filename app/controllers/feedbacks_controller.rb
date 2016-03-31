class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
    @user = User.find(session[:feedback_for_id])
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      flash[:notice] = "Successfully added feedback"
      redirect_to user_path(feedback_params[:user_id])
    else
      flash[:alert] = "Something went wrong :("
      redirect_to user_path(feedback_params[:user_id])
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :comment, :user_id)
  end
end
