class Api::V1::LocationController < ApplicationController
  def show
    render json: LocationSerializer.new(Location.find_by(user_id: params[:user_id]))
  end

  def create
    render json: LocationSerializer.new(Location.create(location_params))
  end

  def update; end

  def destroy; end

  private

  def location_params
    params.permit(:user_id, :location)
  end
end
