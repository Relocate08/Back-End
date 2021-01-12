require 'rails_helper'

describe 'Location' do
  it 'returns the user location' do
    record = create(:location, location: '80110')

    get "/api/v1/location/#{record.user_id}"

    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed[:data]).to have_key(:id)
    expect(parsed[:data]).to have_key(:type)
    expect(parsed[:data]).to have_key(:attributes)

    expect(parsed[:data][:id]).to be_a String

    expect(parsed[:data][:type]).to be_a String
    expect(parsed[:data][:type]).to eq('location')

    expect(parsed[:data][:attributes]).to have_key(:user_id)
    expect(parsed[:data][:attributes]).to have_key(:location)

    expect(parsed[:data][:attributes][:user_id]).to be_an Integer
    expect(parsed[:data][:attributes][:user_id]).to eq(record.user_id)

    expect(parsed[:data][:attributes][:location]).to be_a String
    expect(parsed[:data][:attributes][:location]).to eq(record.location)
  end

  it 'if a user location is searched for but record does not exist' do
    get '/api/v1/location/13'

    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed).to have_key(:data)
    expect(parsed[:data]).to eq(nil)
  end

  it 'creates a location entry' do
    location_params = { user_id: 1, location: '80110' }

    post "/api/v1/#{location_params[:location]}/#{location_params[:user_id]}"
    created_location = Location.last

    expect(response).to be_successful

    expect(created_location.user_id).to eq(location_params[:user_id])
    expect(created_location.location).to eq(location_params[:location])
  end
end
