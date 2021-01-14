require 'rails_helper'

describe 'Businesses Search Facade' do

#utilities endpoints
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

#recreation endpoints
  it 'can see gyms search results' do
    gyms = BusinessesSearchFacade.recreation_search('80211', 'gyms')
    
    expect(gyms).to be_an(Array)
    expect(gyms.first).to be_a(Business)
    expect(gyms.first.distance).to be_a(Float)
    expect(gyms.first.image).to be_a(String)
    expect(gyms.first.location).to be_a(String)
    expect(gyms.first.name).to be_a(String)
    expect(gyms.first.phone).to be_a(String)
    expect(gyms.first.url).to be_a(String)
  end

  it 'can see yoga search results' do
    yoga = BusinessesSearchFacade.recreation_search('80211', 'yoga')

    expect(yoga).to be_an(Array)
    expect(yoga.first).to be_a(Business)
    expect(yoga.first.distance).to be_a(Float)
    expect(yoga.first.image).to be_a(String)
    expect(yoga.first.location).to be_a(String)
    expect(yoga.first.name).to be_a(String)
    expect(yoga.first.phone).to be_a(String)
    expect(yoga.first.url).to be_a(String)
  end
  it 'can see playgrounds search results' do
    playgrounds = BusinessesSearchFacade.recreation_search('80211', 'playgrounds')

    expect(playgrounds).to be_an(Array)
    expect(playgrounds.first).to be_a(Business)
    expect(playgrounds.first.distance).to be_a(Float)
    expect(playgrounds.first.image).to be_a(String)
    expect(playgrounds.first.location).to be_a(String)
    expect(playgrounds.first.name).to be_a(String)
    expect(playgrounds.first.phone).to be_a(String)
    expect(playgrounds.first.url).to be_a(String)
  end

  it 'can see parks search results' do
    parks = BusinessesSearchFacade.recreation_search('80211', 'parks')

    expect(parks).to be_an(Array)
    expect(parks.first).to be_a(Business)
    expect(parks.first.distance).to be_a(Float)
    expect(parks.first.image).to be_a(String)
    expect(parks.first.location).to be_a(String)
    expect(parks.first.name).to be_a(String)
    expect(parks.first.phone).to be_a(String)
    expect(parks.first.url).to be_a(String)
  end

  it 'can see hiking search results' do
    hiking = BusinessesSearchFacade.recreation_search('80211', 'hiking')

    expect(hiking).to be_an(Array)
    expect(hiking.first).to be_a(Business)
    expect(hiking.first.distance).to be_a(Float)
    expect(hiking.first.image).to be_a(String)
    expect(hiking.first.location).to be_a(String)
    expect(hiking.first.name).to be_a(String)
    expect(hiking.first.phone).to be_a(String)
    expect(hiking.first.url).to be_a(String)
  end

  it 'can see recreation search results' do
    recreation = BusinessesSearchFacade.recreation_search('80211', 'recreation')

    expect(recreation).to be_an(Array)
    expect(recreation.first).to be_a(Business)
    expect(recreation.first.distance).to be_a(Float)
    expect(recreation.first.image).to be_a(String)
    expect(recreation.first.location).to be_a(String)
    expect(recreation.first.name).to be_a(String)
    expect(recreation.first.phone).to be_a(String)
    expect(recreation.first.url).to be_a(String)
  end

  it 'can see pools search results' do
    pools = BusinessesSearchFacade.recreation_search('80211', 'pools')

    expect(pools).to be_an(Array)
    expect(pools.first).to be_a(Business)
    expect(pools.first.distance).to be_a(Float)
    expect(pools.first.image).to be_a(String)
    expect(pools.first.location).to be_a(String)
    expect(pools.first.name).to be_a(String)
    expect(pools.first.phone).to be_a(String)
    expect(pools.first.url).to be_a(String)
  end

  it 'can see golf search results' do
    golf = BusinessesSearchFacade.recreation_search('80211', 'golf')

    expect(golf).to be_an(Array)
    expect(golf.first).to be_a(Business)
    expect(golf.first.distance).to be_a(Float)
    expect(golf.first.image).to be_a(String)
    expect(golf.first.location).to be_a(String)
    expect(golf.first.name).to be_a(String)
    expect(golf.first.phone).to be_a(String)
    expect(golf.first.url).to be_a(String)
  end

  #homeservices
  it 'can see homecleaning search results' do
    homecleaning = BusinessesSearchFacade.homeservices_search('80211', 'homecleaning')

    expect(homecleaning).to be_an(Array)
    expect(homecleaning.first).to be_a(Business)
    expect(homecleaning.first.distance).to be_a(Float)
    expect(homecleaning.first.image).to be_a(String)
    expect(homecleaning.first.location).to be_a(String)
    expect(homecleaning.first.name).to be_a(String)
    expect(homecleaning.first.phone).to be_a(String)
    expect(homecleaning.first.url).to be_a(String)
  end

  it 'can see landscaping search results' do
    landscaping = BusinessesSearchFacade.homeservices_search('80211', 'landscaping')

    expect(landscaping).to be_an(Array)
    expect(landscaping.first).to be_a(Business)
    expect(landscaping.first.distance).to be_a(Float)
    expect(landscaping.first.image).to be_a(String)
    expect(landscaping.first.location).to be_a(String)
    expect(landscaping.first.name).to be_a(String)
    expect(landscaping.first.phone).to be_a(String)
    expect(landscaping.first.url).to be_a(String)
  end

  it 'can see handyman search results' do
    handyman = BusinessesSearchFacade.homeservices_search('80211', 'handyman')

    expect(handyman).to be_an(Array)
    expect(handyman.first).to be_a(Business)
    expect(handyman.first.distance).to be_a(Float)
    expect(handyman.first.image).to be_a(String)
    expect(handyman.first.location).to be_a(String)
    expect(handyman.first.name).to be_a(String)
    expect(handyman.first.phone).to be_a(String)
    expect(handyman.first.url).to be_a(String)
  end

  it 'can see damage restoration search results' do
    damagerestoration = BusinessesSearchFacade.homeservices_search('80211', 'damagerestoration')

    expect(damagerestoration).to be_an(Array)
    expect(damagerestoration.first).to be_a(Business)
    expect(damagerestoration.first.distance).to be_a(Float)
    expect(damagerestoration.first.image).to be_a(String)
    expect(damagerestoration.first.location).to be_a(String)
    expect(damagerestoration.first.name).to be_a(String)
    expect(damagerestoration.first.phone).to be_a(String)
    expect(damagerestoration.first.url).to be_a(String)
  end

  it 'can see locksmiths search results' do
    locksmiths = BusinessesSearchFacade.homeservices_search('80211', 'locksmiths')

    expect(locksmiths).to be_an(Array)
    expect(locksmiths.first).to be_a(Business)
    expect(locksmiths.first.distance).to be_a(Float)
    expect(locksmiths.first.image).to be_a(String)
    expect(locksmiths.first.location).to be_a(String)
    expect(locksmiths.first.name).to be_a(String)
    expect(locksmiths.first.phone).to be_a(String)
    expect(locksmiths.first.url).to be_a(String)
  end

  it 'can see painters search results' do
    painters = BusinessesSearchFacade.homeservices_search('80211', 'painters')

    expect(painters).to be_an(Array)
    expect(painters.first).to be_a(Business)
    expect(painters.first.distance).to be_a(Float)
    expect(painters.first.image).to be_a(String)
    expect(painters.first.location).to be_a(String)
    expect(painters.first.name).to be_a(String)
    expect(painters.first.phone).to be_a(String)
    expect(painters.first.url).to be_a(String)
  end

  it 'can see plumbing search results' do
    plumbing = BusinessesSearchFacade.homeservices_search('80211', 'plumbing')

    expect(plumbing).to be_an(Array)
    expect(plumbing.first).to be_a(Business)
    expect(plumbing.first.distance).to be_a(Float)
    expect(plumbing.first.image).to be_a(String)
    expect(plumbing.first.location).to be_a(String)
    expect(plumbing.first.name).to be_a(String)
    expect(plumbing.first.phone).to be_a(String)
    expect(plumbing.first.url).to be_a(String)
  end
end
