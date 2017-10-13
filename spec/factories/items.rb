FactoryGirl.define do
  factory :item do
    body Faker::Hipster.sentence
    complete false
    list
  end
end
