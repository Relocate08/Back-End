FactoryBot.define do
  factory :location do
    user_id { Faker::Number.between(from: 1, to: 999_999) }
    location { Faker::Address.zip }
  end
end
