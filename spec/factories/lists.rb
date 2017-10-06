FactoryGirl.define do
  factory :list do
    title Faker::Hipster.unique.word
    user
  end
end
