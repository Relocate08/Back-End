class LocationSerializer
  include JSONAPI::Serializer
  attributes :user_id, :location
end