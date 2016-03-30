class HomesController < ApplicationController
  def index
  end

  def setup
    @user = current_user
  end

end
