require 'rails_helper'

describe "Yelp businesses search by category" do
  it "can return electric companies based on user input" do

    get '/api/v1/yelp/80211/utilities/electricity'
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq("businesses")
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


  it "can return water companies based on user input" do
    get '/api/v1/yelp/80211/utilities/water'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq("businesses")
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

  it "can return isp companies based on user input" do

    get '/api/v1/yelp/80211/utilities/isps'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)
    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq("businesses")
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

  it "can return tv providers based on user input" do

    get '/api/v1/yelp/80211/utilities/tv'

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)

    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq("businesses")
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

  it 'can get a business\' details' do
    binding.pry
    get '/api/v1/yelp/businesses/WavvLdfdP6g8aZTtbBQHTw'

    expect(response).to be_successful
    # json = JSON.parse(response.body, symbolize_names: true)

    expect(json).to be_a(Hash)

    businesses_info = json[:data][0]
    expect(businesses_info).to be_a(Hash)
    expect(businesses_info).to have_key(:id)
    expect(businesses_info[:id]).to be_a(String)
    expect(businesses_info).to have_key(:type)
    expect(businesses_info[:type]).to eq("businesses")
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
