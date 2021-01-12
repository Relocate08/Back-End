class BusinessesSearchFacade
  def self.utilities_search(location, type)
    businesses = BusinessesSearchService.utility_search(location, type)
    is_open(businesses)
  end

  def self.recreation_search(location, type)
    businesses = BusinessesSearchService.recreation_search(location, type)
    is_open(businesses)
  end

  def self.homeservices_search(location, type)
    businesses = BusinessesSearchService.homeservice_search(location, type)
    is_open(businesses)
  end

  private

  def self.is_open(businesses)
    results = businesses[:data].select {|result| result[:is_closed] == false}
    results.map{|result| Business.new(result)}
  end
end
