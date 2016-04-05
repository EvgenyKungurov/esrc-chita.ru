# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    type ""
    question_text "MyString"
    position 1
    answer_options "MyText"
    validation_rules "MyText"
  end
end
