class UtilitySerializer
  include JSONAPI::Serializer
  attributes :name, :image, :url, :closed_bool, :phone, :distance, :location, :id
end
