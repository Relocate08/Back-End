class Business
  attr_reader :name,
              :image,
              :url,
              :phone,
              :distance,
              :location,
              :id

  def initialize(result)
    @name = result[:name]
    @image = result[:image]
    @url = result[:url]
    @phone = result[:phone]
    @distance = result[:distance]
    @location = address(result[:location])
    @id = result[:id]
  end

  def address(location)
    "#{location[:address1]} #{location[:address2]} #{location[:city]} #{location[:state]}, #{location[:zip_code]}"
  end
end
