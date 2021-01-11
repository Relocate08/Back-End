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
    favorite = Favorite.find(user_id: params[:user_id], yelp_business_id: params[:yelp_business_id])
    if favorite.destroy
      render json: "Favorite has been deleted."
    else
      render json: "Favorite could not be deleted."
    end
  end
end
