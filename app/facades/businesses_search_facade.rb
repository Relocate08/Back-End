class BusinessesSearchFacade
  def self.utilities_search(location, type)
    utilities = BusinessesSearchService.utility_search(location, type)
    open_businesses = utilities[:data].select {|result| result[:is_closed] == false}
    open_businesses.map{|result| Utility.new(result)}
  end
end
