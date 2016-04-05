# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :social_post do
    title "MyText"
    text "MyText"
    social_id 1
  end
end
