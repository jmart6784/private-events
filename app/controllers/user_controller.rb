class UserController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.event
    @upcoming_events = @events.upcoming_events  
    @prev_events = @events.prev_events
  end
end
