class Api::V1::LocationController < ApplicationController
  def show
    render json: LocationSerializer.new(Location.find_by(user_id: params[:user_id]))
  end

  def create
    render json: LocationSerializer.new(Location.create(location_params))
  end

  def update
    location = Location.find_by(user_id: params[:user_id].to_i)
    render json: LocationSerializer.new(Location.update(location.id, location_params))
  end

  def destroy
    location = Location.find_by(user_id: (params[:user_id]).to_i)
    render json: LocationSerializer.new(location.destroy)
  end

  private

  def location_params
    params.permit(:user_id, :location)
  end
end
