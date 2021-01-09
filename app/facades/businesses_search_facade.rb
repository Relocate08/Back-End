class BusinessesSearchFacade
  def self.utilities_search(location, type)
    utilities = BusinessesSearchService.utility_search(location, type)
    utilities[:data].map do |result|
      Utility.new(result)
    end
  end
end
