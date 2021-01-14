class Api::V1::Yelp::EventsController < ApplicationController
  def index
    data = EventsFacade.get_events(params[:location])
    render json: EventsSerializer.new(data)
  end
end
