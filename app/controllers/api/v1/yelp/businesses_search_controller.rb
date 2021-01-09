class Api::V1::Yelp::BusinessesSearchController < ApplicationController
  def utilities
    data = BusinessesSearchFacade.utilities_search(params[:location], params[:type])
    render json: UtilitySerializer.new(data)
    # x = data.each_with_object([]) do |obj, array|
    #   array << UtilitySerializer.new(obj)
    # end
  end
end
