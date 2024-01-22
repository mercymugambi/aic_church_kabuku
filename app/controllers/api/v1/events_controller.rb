class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def create
    @events = Event.new(events_params)
    @events.created_by = current_user.id

    if @events.save
      redirect_to @events, notice: 'Event was successfully created.'
    else
      puts @events.errors.full_messages
      render :new
    end
  end

  private

  def events_params
    params.require(:events).permit(:title, :description, :image)
  end
end
