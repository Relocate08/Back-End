class EventsSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :is_free, :is_canceled, :url, :attending_count, :interested_count, :location, :time_start
end
