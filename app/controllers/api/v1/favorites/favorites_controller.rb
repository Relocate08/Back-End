class Api::V1::Favorites::FavoritesController < ApplicationController
  def index
    data = Favorite.where(user_id: params[:user_id])
    render json: FavoritesSerializer.new(data)
  end

  def create
    data = Favorite.create(
      user_id: params[:user_id],
      yelp_business_id: params[:yelp_business_id],
      business_name: params[:business_name]
    )

    render json: FavoritesSerializer.new(data)
  end

  def destroy
    favorite = Favorite.find_by(user_id: params[:user_id], yelp_business_id: params[:yelp_business_id])
    render json: FavoritesSerializer.new(favorite.destroy)
  end
end
