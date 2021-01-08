class Utility
  attr_reader :name,
              :image,
              :url,
              :closed_bool,
              :phone,
              :distance,
              :location

  def initialize(result)
    @name = result[:name]
    @image = result[:image]
    @url = result[:url]
    @closed_bool = result[:is_closed]
    @phone = result[:phone]
    @distance = result[:distance]
    @location = address(result[:location])
  end

  def address(location)
    "#{location[:address1]},#{location[:address2]},#{location[:city]},#{location[:state]},#{location[:zip_code]} "
  end
end
