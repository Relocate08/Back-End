require 'rails_helper'

describe 'Events Facade' do
  it 'can see events search results' do
    event = EventsFacade.get_events('80211')
    expect(event).to be_an(Array)
    expect(event.first).to be_a(Event)
    expect(event.first.id).to be_a(String)
    expect(event.first.attending_count).to be_a(Integer)
    expect(event.first.interested_count).to be_a(Integer)
    expect(event.first.is_canceled).to be(true).or be(false)
    expect(event.first.is_free).to be(true).or be(false)
    expect(event.first.location).to be_a(Array)
    expect(event.first.name).to be_a(String)
    expect(event.first.time_start).to be_a(Time)
    expect(event.first.url).to be_a(String)
  end
end
