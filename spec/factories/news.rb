# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news, :class => 'New' do
    title "MyText"
    text "MyText"
  end
end
