class EventsController < ApplicationController
  def new
    @event = Event.new
    @tutor = User.find(session[:event_for_id])
    @student = current_user
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @users = [User.find(event_params[:student_id]), User.find(event_params[:tutor_id])]
    @event_details = {
      name: event_params[:name],
      location: event_params[:location],
      event_date: event_params[:event_date],
      event_time: event_params[:event_time],
      users: @users
    }

    @event = Event.new(@event_details)

    if @event.save
      flash[:notice] = "Successfully added event"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Something went wrong :("
      redirect_to user_path(event_params[:tutor_id])
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :event_date, :event_time,
                                  :student_id, :tutor_id)
  end
end
