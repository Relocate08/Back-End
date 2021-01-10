require 'rails_helper'

describe 'Businesses Search Facade' do

  it 'can see electricity search results' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'electricity')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see water search results' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'water')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see isp search results' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'isps')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see tv search results' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'tv')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see gyms search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'gyms')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see yoga search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'yoga')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end
  it 'can see playgrounds search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'playgrounds')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see parks search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'parks')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see hiking search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'hiking')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see recreation search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'recreation')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see pools search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'pools')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see golf search results' do
    utility = BusinessesSearchFacade.recreation_search('80211', 'golf')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Business)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end
end
