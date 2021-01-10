require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:yelp_business_id) }
    it { should validate_uniqueness_of(:yelp_business_id) }
    it { should validate_presence_of(:business_name) }
  end
end
