class EventsController < ApplicationController
  def index
    client = Google::APIClient.new
    client.authorization.access_token = current_user.authorizations.find_by_provider(
      "google_oauth2").fresh_token

    service = client.discovered_api("calendar", "v3")

    @result = client.execute(
      api_method: service.calendar_list.list,
      parameters: {},
      headers: {
        "Content-Type" => "application/json"
      }
    )
  end
end
