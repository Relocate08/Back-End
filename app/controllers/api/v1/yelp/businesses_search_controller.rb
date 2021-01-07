class Api::V1::Yelp::BusinessesSearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://relocate-08-yelp-microservice.herokuapp.com')
    response = conn.get("/")
    parsed = JSON.parse(response.body, symbolize_names: true)
    render json: parsed
  end
end
