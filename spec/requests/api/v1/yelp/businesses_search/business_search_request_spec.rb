require 'rails_helper'

describe "Yelp business search by category" do
  it "can return root message from microservice" do

    get '/api/v1/yelp/80211/utilities/electricity'
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
  end
end
