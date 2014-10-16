# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :comment do
    f.text { Faker::Lorem.sentences(3) }
    f.points { Faker::Number.number(2) }
  end
end
