require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :type => "",
      :question_text => "MyString",
      :position => 1,
      :answer_options => "MyText",
      :validation_rules => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_type[name=?]", "question[type]"
      assert_select "input#question_question_text[name=?]", "question[question_text]"
      assert_select "input#question_position[name=?]", "question[position]"
      assert_select "textarea#question_answer_options[name=?]", "question[answer_options]"
      assert_select "textarea#question_validation_rules[name=?]", "question[validation_rules]"
    end
  end
end
