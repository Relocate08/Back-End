require 'rails_helper'

describe 'favorites' do
  before do
    Favorite.create(
      user_id: 25,
      yelp_business_id: 'kjujytgfuy6vrI76gibutfgJHK',
      business_name: 'The Dryest Cleaners'
    )
  end

  it 'can create a favorite' do
    user_id_1 = 25
    business_id_1 = 'askljufo987awyg34'
    business_name_1 = 'Mock Hawks'
    post "/api/v1/favorites/#{user_id_1}/#{business_id_1}", params: {business_name: business_name_1}

    finding_fave = Favorite.find(
      user_id: user_id_1,
      yelp_business_id: business_id_1,
      business_name: business_name_1
    )
    expect(finding_fave).to be(true)
  end
end
