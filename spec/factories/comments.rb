# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :comment do |f|
    f.text { Faker::Lorem.paragraph(3) }
    f.points { Faker::Number.number(2) }
  end
end
