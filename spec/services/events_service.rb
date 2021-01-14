require 'rails_helper'

describe 'Events Service' do
  it 'search(events)' do
    event_data = EventsService.fetch_events('80211')
    expect(events_data).to be_a(Hash)

    event_data[:events].each do |events_info|
    expect(events_info).to be_an(Hash)

    expect(events_info).to have_key(:name)
    expect(events_info[:name]).to be_a(String)

    expect(events_info).to have_key(:id)
    expect(events_info[:id]).to be_a(String)

    expect(events_info).to have_key(:is_free)
    expect(events_info[:is_free]).to be(true).or be(false)

    expect(events_info).to have_key(:is_canceled)
    expect(events_info[:is_canceled]).to be(true).or be(false)

    expect(events_info).to have_key(:url)
    expect(events_info[:url]).to be_a(String)

    expect(events_info).to have_key(:attending_count)
    expect(events_info[:attending_count]).to be_a(Integer)

    expect(events_info).to have_key(:interested_count)
    expect(events_info[:interested_count]).to be_a(Integer)

    expect(events_info).to have_key(:location)
    expect(events_info[:location]).to be_a(Array)

    expect(events_info).to have_key(:time_start)
    expect(events_info[:time_start]).to be_a(String)

    expect(events_info).to have_key(:id)
    expect(events_info[:id]).to be_a(String)

    expect(events_info).to have_key(:name)
    expect(events_info[:name]).to be_a(String)
  end
end
