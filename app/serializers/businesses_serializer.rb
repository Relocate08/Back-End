class BusinessesSerializer
  include JSONAPI::Serializer
  attributes :name, :image, :url, :phone, :distance, :location, :id
end
