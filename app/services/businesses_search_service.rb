class BusinessesSearchService
  def self.utility_search(location, type)
    response = conn.get("/#{location}/utilities/#{type}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new(url: 'https://relocate-08-yelp-microservice.herokuapp.com')
  end
end
