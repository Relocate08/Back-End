class BusinessesSearchService
  def self.utility_search(location, type)
    response = conn.get("/#{location}/utilities/#{type}")
    parsed(response)
  end

  def self.recreation_search(location, type)
    response = conn.get("/#{location}/recreation/#{type}")
    parsed(response)
  end

  def self.find_business(yelp_api_key)
    response = conn.get("/businesses/#{yelp_api_key}")
    parsed(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://relocate-08-yelp-microservice.herokuapp.com')
  end

  def self.parsed(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
