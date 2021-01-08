class Api::V1::Yelp::BusinessesSearchController < ApplicationController
  def utilities
    data = BusinessesSearchFacade.utilities_search(params[:location], params[:type])
    require "pry"; binding.pry
  end
end
