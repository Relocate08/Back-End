class FavoritesSerializer
  include JSONAPI::Serializer
  attributes :user_id, :yelp_business_id, :business_name
end
