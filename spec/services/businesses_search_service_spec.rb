require 'rails_helper'

describe 'Business Search Service' do
  it 'search()' do
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

  it 'search()' do
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
end
