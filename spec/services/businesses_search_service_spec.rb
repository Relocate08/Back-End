require 'rails_helper'

describe 'Business Search Service' do
  it 'can search for electric data' do
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

  it 'can search for water data' do
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
end
