require 'rails_helper'

describe 'favorites' do
  before do
    @favorite = Favorite.create(
      user_id: 25,
      yelp_business_id: 'kjujytgfuy6vrI76gibutfgJHK',
      business_name: 'The Dryest Cleaners'
    )
  end

  it 'can create a favorite' do
    user_id_1 = 25
    business_id_1 = 'askljufo987awyg34'
    business_name_1 = 'Mock Hawks'
    post "/api/v1/favorites/#{user_id_1}/#{business_id_1}", params: { business_name: business_name_1 }

    finding_fave = Favorite.last
    expect(finding_fave.user_id).to eq(user_id_1)
    expect(finding_fave.yelp_business_id).to eq(business_id_1)
    expect(finding_fave.business_name).to eq(business_name_1)
  end

  it 'can show all favorites for a user' do
    user_id_1 = 25
    business_id_1 = 'askljufo987awyg34'
    business_name_1 = 'Mock Hawks'
    post "/api/v1/favorites/#{user_id_1}/#{business_id_1}", params: { business_name: business_name_1 }

    get "/api/v1/favorites/#{user_id_1}"
    parsed_response = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(parsed_response.count).to eq(2)
    expect(parsed_response[0][:type]).to eq('favorites')
    expect(parsed_response[1][:type]).to eq('favorites')
    expect(parsed_response[1][:attributes][:business_name]).to eq(business_name_1)
    expect(parsed_response[1][:attributes][:user_id]).to eq(user_id_1)
    expect(parsed_response[1][:attributes][:yelp_business_id]).to eq(business_id_1)
  end

  it 'can delete a favorite' do
    expect(Favorite.find(@favorite.id)).to be_truthy
    id_to_check = @favorite.id
    delete "/api/v1/favorites/#{@favorite.user_id}/#{@favorite.yelp_business_id}"

    expect(Favorite.find_by(id: id_to_check)).to eq(nil)
  end
end
