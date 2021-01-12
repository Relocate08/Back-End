require 'rails_helper'

describe 'Business Search Service' do

  it 'search(utility - electricity)' do
    electricity = BusinessesSearchService.utility_search('80211', 'electricity')
    expect(electricity).to be_a(Hash)
    electricity_info = electricity[:data][0]
    expect(electricity_info).to be_an(Hash)

    expect(electricity_info).to have_key(:name)
    expect(electricity_info[:name]).to be_a(String)

    expect(electricity_info).to have_key(:image)
    expect(electricity_info[:image]).to be_a(String)

    expect(electricity_info).to have_key(:url)
    expect(electricity_info[:url]).to be_a(String)

    expect(electricity_info).to have_key(:phone)
    expect(electricity_info[:phone]).to be_a(String)

    expect(electricity_info).to have_key(:distance)
    expect(electricity_info[:distance]).to be_a(Float)

    expect(electricity_info).to have_key(:location)
    expect(electricity_info[:location]).to be_a(Hash)
  end

  it 'search(water)' do
    water = BusinessesSearchService.utility_search('80211', 'water')
    expect(water).to be_a(Hash)
    water_info = water[:data][0]
    expect(water_info).to be_an(Hash)

    expect(water_info).to have_key(:name)
    expect(water_info[:name]).to be_a(String)

    expect(water_info).to have_key(:image)
    expect(water_info[:image]).to be_a(String)

    expect(water_info).to have_key(:url)
    expect(water_info[:url]).to be_a(String)

    expect(water_info).to have_key(:phone)
    expect(water_info[:phone]).to be_a(String)

    expect(water_info).to have_key(:distance)
    expect(water_info[:distance]).to be_a(Float)

    expect(water_info).to have_key(:location)
    expect(water_info[:location]).to be_a(Hash)
  end

  it 'search(utility - isps)' do
    isps = BusinessesSearchService.utility_search('80211', 'isps')
    expect(isps).to be_a(Hash)
    isps_info = isps[:data][0]
    expect(isps_info).to be_an(Hash)

    expect(isps_info).to have_key(:name)
    expect(isps_info[:name]).to be_a(String)

    expect(isps_info).to have_key(:image)
    expect(isps_info[:image]).to be_a(String)

    expect(isps_info).to have_key(:url)
    expect(isps_info[:url]).to be_a(String)

    expect(isps_info).to have_key(:phone)
    expect(isps_info[:phone]).to be_a(String)

    expect(isps_info).to have_key(:distance)
    expect(isps_info[:distance]).to be_a(Float)

    expect(isps_info).to have_key(:location)
    expect(isps_info[:location]).to be_a(Hash)
  end

  it 'search(utility - tv)' do
    tv = BusinessesSearchService.utility_search('80211', 'tv')
    expect(tv).to be_a(Hash)
    tv_info = tv[:data][0]
    expect(tv_info).to be_an(Hash)

    expect(tv_info).to have_key(:name)
    expect(tv_info[:name]).to be_a(String)

    expect(tv_info).to have_key(:image)
    expect(tv_info[:image]).to be_a(String)

    expect(tv_info).to have_key(:url)
    expect(tv_info[:url]).to be_a(String)

    expect(tv_info).to have_key(:phone)
    expect(tv_info[:phone]).to be_a(String)

    expect(tv_info).to have_key(:distance)
    expect(tv_info[:distance]).to be_a(Float)

    expect(tv_info).to have_key(:location)
    expect(tv_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - gyms)' do
    gym = BusinessesSearchService.recreation_search('80211', 'gyms')
    expect(gym).to be_a(Hash)
    gym_info = gym[:data][0]
    expect(gym_info).to be_an(Hash)

    expect(gym_info).to have_key(:name)
    expect(gym_info[:name]).to be_a(String)

    expect(gym_info).to have_key(:image)
    expect(gym_info[:image]).to be_a(String)

    expect(gym_info).to have_key(:url)
    expect(gym_info[:url]).to be_a(String)

    expect(gym_info).to have_key(:phone)
    expect(gym_info[:phone]).to be_a(String)

    expect(gym_info).to have_key(:distance)
    expect(gym_info[:distance]).to be_a(Float)

    expect(gym_info).to have_key(:location)
    expect(gym_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - yoga)' do
    yoga = BusinessesSearchService.recreation_search('80211', 'yoga')
    expect(yoga).to be_a(Hash)
    yoga_info = yoga[:data][0]
    expect(yoga_info).to be_an(Hash)

    expect(yoga_info).to have_key(:name)
    expect(yoga_info[:name]).to be_a(String)

    expect(yoga_info).to have_key(:image)
    expect(yoga_info[:image]).to be_a(String)

    expect(yoga_info).to have_key(:url)
    expect(yoga_info[:url]).to be_a(String)

    expect(yoga_info).to have_key(:phone)
    expect(yoga_info[:phone]).to be_a(String)

    expect(yoga_info).to have_key(:distance)
    expect(yoga_info[:distance]).to be_a(Float)

    expect(yoga_info).to have_key(:location)
    expect(yoga_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - parks)' do
    parks = BusinessesSearchService.recreation_search('80211', 'parks')
    expect(parks).to be_a(Hash)
    parks_info = parks[:data][0]
    expect(parks_info).to be_an(Hash)

    expect(parks_info).to have_key(:name)
    expect(parks_info[:name]).to be_a(String)

    expect(parks_info).to have_key(:image)
    expect(parks_info[:image]).to be_a(String)

    expect(parks_info).to have_key(:url)
    expect(parks_info[:url]).to be_a(String)

    expect(parks_info).to have_key(:phone)
    expect(parks_info[:phone]).to be_a(String)

    expect(parks_info).to have_key(:distance)
    expect(parks_info[:distance]).to be_a(Float)

    expect(parks_info).to have_key(:location)
    expect(parks_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - hiking)' do
    hiking = BusinessesSearchService.recreation_search('80211', 'hiking')
    expect(hiking).to be_a(Hash)
    hiking_info = hiking[:data][0]
    expect(hiking_info).to be_an(Hash)

    expect(hiking_info).to have_key(:name)
    expect(hiking_info[:name]).to be_a(String)

    expect(hiking_info).to have_key(:image)
    expect(hiking_info[:image]).to be_a(String)

    expect(hiking_info).to have_key(:url)
    expect(hiking_info[:url]).to be_a(String)

    expect(hiking_info).to have_key(:phone)
    expect(hiking_info[:phone]).to be_a(String)

    expect(hiking_info).to have_key(:distance)
    expect(hiking_info[:distance]).to be_a(Float)

    expect(hiking_info).to have_key(:location)
    expect(hiking_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - recreation)' do
    recreation = BusinessesSearchService.recreation_search('80211', 'recreation')
    expect(recreation).to be_a(Hash)
    recreation_info = recreation[:data][0]
    expect(recreation_info).to be_an(Hash)

    expect(recreation_info).to have_key(:name)
    expect(recreation_info[:name]).to be_a(String)

    expect(recreation_info).to have_key(:image)
    expect(recreation_info[:image]).to be_a(String)

    expect(recreation_info).to have_key(:url)
    expect(recreation_info[:url]).to be_a(String)

    expect(recreation_info).to have_key(:phone)
    expect(recreation_info[:phone]).to be_a(String)

    expect(recreation_info).to have_key(:distance)
    expect(recreation_info[:distance]).to be_a(Float)

    expect(recreation_info).to have_key(:location)
    expect(recreation_info[:location]).to be_a(Hash)
  end

  it 'search(recreation - pools)' do
    pools = BusinessesSearchService.recreation_search('80211', 'pools')
    expect(pools).to be_a(Hash)
    pools_info = pools[:data][0]
    expect(pools_info).to be_an(Hash)

    expect(pools_info).to have_key(:name)
    expect(pools_info[:name]).to be_a(String)

    expect(pools_info).to have_key(:image)
    expect(pools_info[:image]).to be_a(String)

    expect(pools_info).to have_key(:url)
    expect(pools_info[:url]).to be_a(String)

    expect(pools_info).to have_key(:phone)
    expect(pools_info[:phone]).to be_a(String)

    expect(pools_info).to have_key(:distance)
    expect(pools_info[:distance]).to be_a(Float)

    expect(pools_info).to have_key(:location)
    expect(pools_info[:location]).to be_a(Hash)
  end
end
