require 'rails_helper'

#utility endpoints
describe 'Yelp businesses search by category' do
  it 'can return electric companies based on user input' do
    get '/api/v1/yelp/80211/utilities/electricity'
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return water companies based on user input' do
    get '/api/v1/yelp/80211/utilities/water'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return isp companies based on user input' do
    get '/api/v1/yelp/80211/utilities/isps'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return tv providers based on user input' do
    get '/api/v1/yelp/80211/utilities/tv'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)

    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  # recreation endpoints
  it 'can return gyms companies based on user input' do
    get '/api/v1/yelp/80211/recreation/gyms'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return yoga companies based on user input' do
    get '/api/v1/yelp/80211/recreation/yoga'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return parks based on user input' do
    get '/api/v1/yelp/80211/recreation/parks'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return hiking locations based on user input' do
    get '/api/v1/yelp/80211/recreation/hiking'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return recreation activities based on user input' do

    get '/api/v1/yelp/80211/recreation/recreation'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return pool companies based on user input' do

    get '/api/v1/yelp/80211/recreation/pools'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  # homeservices endpoints
  it 'can return homecleaning companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/homecleaning'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return landscaping companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/landscaping'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return handyman companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/handyman'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return damagerestoration companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/damagerestoration'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return locksmiths companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/locksmiths'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return painters companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/painters'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end

  it 'can return plumbing companies based on user input' do

    get '/api/v1/yelp/80211/homeservices/plumbing'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq('businesses')
    expect(businesses_info).to have_key(:attributes)

    businesses_attr = businesses_info[:attributes]
    expect(businesses_attr).to have_key(:name)
    expect(businesses_attr[:name]).to be_a(String)

    expect(businesses_attr).to have_key(:image)
    expect(businesses_attr[:image]).to be_a(String)

    expect(businesses_attr).to have_key(:url)
    expect(businesses_attr[:url]).to be_a(String)

    expect(businesses_attr).to have_key(:phone)
    expect(businesses_attr[:phone]).to be_a(String)

    expect(businesses_attr).to have_key(:distance)
    expect(businesses_attr[:distance]).to be_a(Float)

    expect(businesses_attr).to have_key(:location)
    expect(businesses_attr[:location]).to be_a(String)
  end
end

describe 'Yelp single business search' do\
  it 'can get business details' do
    get '/api/v1/yelp/businesses/WavvLdfdP6g8aZTtbBQHTw'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    business_info = json[:data]
    expect(business_info).to be_a(Hash)
    expect(business_info).to have_key(:id)
    expect(business_info[:id]).to be_a(String)
    expect(business_info).to have_key(:type)
    expect(business_info[:type]).to eq('businesses')
    expect(business_info).to have_key(:attributes)

    business_attr = business_info[:attributes]
    expect(business_attr).to have_key(:name)
    expect(business_attr[:name]).to be_a(String)

    expect(business_attr).to have_key(:image)
    expect(business_attr[:image]).to be_a(String)

    expect(business_attr).to have_key(:url)
    expect(business_attr[:url]).to be_a(String)

    expect(business_attr).to have_key(:phone)
    expect(business_attr[:phone]).to be_a(String)

    expect(business_attr).to have_key(:location)
    expect(business_attr[:location]).to be_a(String)
  end
end