# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :servicetext do
    title "MyText"
    service_id 1
    text "MyText"
  end
end
