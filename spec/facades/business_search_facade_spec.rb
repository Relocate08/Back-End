require 'rails_helper'

describe 'Businesses Search Facade' do
  it 'can see search results for electricity' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'electricity')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Utility)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end

  it 'can see search results for water' do
    utility = BusinessesSearchFacade.utilities_search('80211', 'water')

    expect(utility).to be_an(Array)
    expect(utility.first).to be_a(Utility)
    expect(utility.first.distance).to be_a(Float)
    expect(utility.first.image).to be_a(String)
    expect(utility.first.location).to be_a(String)
    expect(utility.first.name).to be_a(String)
    expect(utility.first.phone).to be_a(String)
    expect(utility.first.url).to be_a(String)
  end
end
