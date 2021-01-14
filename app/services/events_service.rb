class EventsService
  def self.fetch_events(location)
    conn = Faraday.new('https://relocate-08-yelp-microservice.herokuapp.com')
    response = conn.get("/#{location}/events")
    JSON.parse(response.body, symbolize_names: true)
  end
end
