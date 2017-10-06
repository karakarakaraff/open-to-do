FactoryGirl.define do
  factory :item do
    body Faker::Hipster.sentence
    list
  end
end
