class Api::V1::Yelp::BusinessesSearchController < ApplicationController
  def utilities
    data = BusinessesSearchFacade.utilities_search(params[:location], params[:type])
    render json: BusinessesSerializer.new(data)
  end
end
