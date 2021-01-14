require 'rails_helper'

describe 'it can receive local events from micro service' do
  it 'receives data' do
    get '/api/v1/yelp/80211/events'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:data)
    expect(json[:data]).to be_an(Array)
    events = json[:data]
    events.each do |event|
      expect(event).to have_key(:id)
      expect(event[:id]).to be_a(String)
      expect(event[:attributes]).to have_key(:name)
      expect(event[:attributes][:name]).to be_a(String)
      expect(event[:attributes]).to have_key(:is_free)
      expect(event[:attributes][:is_free]).to be(true).or be(false)
      expect(event[:attributes]).to have_key(:is_canceled)
      expect(event[:attributes][:is_canceled]).to be(true).or be(false)
      expect(event[:attributes]).to have_key(:url)
      expect(event[:attributes][:url]).to be_a(String)
      expect(event[:attributes]).to have_key(:attending_count)
      expect(event[:attributes][:attending_count]).to be_a(Integer)
      expect(event[:attributes]).to have_key(:interested_count)
      expect(event[:attributes][:interested_count]).to be_a(Integer)
      expect(event[:attributes]).to have_key(:location)
      expect(event[:attributes][:location]).to be_a(Array)
      expect(event[:attributes]).to have_key(:time_start)
      expect(event[:attributes][:time_start]).to be_a(String)
    end
  end
end
