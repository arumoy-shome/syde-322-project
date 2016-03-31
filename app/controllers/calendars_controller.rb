class CalendarsController < ApplicationController
  def show
    @tutor = User.find(session[:calendar_for_id])
    @user = current_user
    @events = @user.events.group_by(&:event_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
