# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Name.title }
    f.link { Faker::Internet.url }
    f.text { Faker::Lorem.paragraph(3) }
  end
end
