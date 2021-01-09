require 'rails_helper'

describe 'Business Search Service' do

  it 'search(electricity)' do
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

  it 'search(isps)' do
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
  
  it 'search(tv)' do
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
end
