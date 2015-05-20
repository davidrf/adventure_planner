require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :adventure do
    sequence(:name) { |n| "adventure_#{n}" }
    description "Sailing Trip"
    location "Boston, MA"
    start_date Date.new(2015, 06, 25)
    start_time "9:00 AM"
    end_time "5:00 PM"
  end
end
