class Api::V1::Yelp::BusinessesSearchController < ApplicationController
  def utilities
    data = BusinessesSearchFacade.utilities_search(params[:location], params[:type])
    render json: BusinessesSerializer.new(data)
  end

  def recreation
    data = BusinessesSearchFacade.recreation_search(params[:location], params[:type])
    render json: BusinessesSerializer.new(data)
  end

  def homeservices
    data = BusinessesSearchFacade.homeservices_search(params[:location], params[:type])
    render json: BusinessesSerializer.new(data)
  end

  def find_business
    data = BusinessesSearchFacade.find_business(params[:id])
    render json: BusinessesSerializer.new(data)
  end
end
