class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
    @feedback_for_id = session[:feedback_for_id]
  end

  def create
    @feedback = Feedback.create(feedback_params)

    if @feedback.save
      flash[:notice] = "Successfully added feedback"
      redirect_to user_path(feedback_params[:user_id])
    else
      flash[:notice] = "Something went wrong :("
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :comment, :user_id)
  end
end
