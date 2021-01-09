require 'rails_helper'

describe "Yelp business search by category" do
  it "can return electric companies based on user input" do

    get '/api/v1/yelp/80211/utilities/electricity'
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    utility_info = json[:data][0]
    expect(utility_info).to be_a(Hash)
    expect(utility_info).to have_key(:id)
    expect(utility_info[:id]).to eq(nil)
    expect(utility_info).to have_key(:type)
    expect(utility_info[:type]).to eq("utility")
    expect(utility_info).to have_key(:attributes)

    utility_attr = utility_info[:attributes]
    expect(utility_attr).to have_key(:name)
    expect(utility_attr[:name]).to be_a(String)

    expect(utility_attr).to have_key(:image)
    expect(utility_attr[:image]).to be_a(String)

    expect(utility_attr).to have_key(:url)
    expect(utility_attr[:url]).to be_a(String)

    expect(utility_attr).to have_key(:closed_bool)
    expect(utility_attr[:closed_bool]).to be_a(FalseClass)

    expect(utility_attr).to have_key(:phone)
    expect(utility_attr[:phone]).to be_a(String)

    expect(utility_attr).to have_key(:distance)
    expect(utility_attr[:distance]).to be_a(Float)

    expect(utility_attr).to have_key(:location)
    expect(utility_attr[:location]).to be_a(String)
  end
end
