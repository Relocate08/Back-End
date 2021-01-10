class Favorite < ApplicationRecord
  validates :user_id, presence: true
  validates :business_name, presence: true
  validates :yelp_business_id, presence: true, uniqueness: true
end
