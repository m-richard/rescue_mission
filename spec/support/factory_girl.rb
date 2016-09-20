require 'factory_girl_rails'

FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "awesome guy#{n}"}
  end
end

FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "What do I do here#{n}"}
    sequence(:content) { |n| "How do I do this??#{n}"}
    user_id {rand(1..5)}
  end
end

FactoryGirl.define do
  factory :answer do
    description {"What is going on here I don't knowwwww"}
    user_id {rand(1..5)}
    question_id {rand(1..5)}
  end
end
