class BusinessesSearchFacade
  def self.utilities_search(location, type)
    conn = Faraday.new(url: 'https://relocate-08-yelp-microservice.herokuapp.com')
    response = conn.get("/#{location}/utilities/#{type}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:data].map do |result|
      Utility.new(result)
    end
  end
end
