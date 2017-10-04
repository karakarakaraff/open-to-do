FactoryGirl.define do
  factory :item do
    body Faker::Hipster.paragraph
    list
  end
end
