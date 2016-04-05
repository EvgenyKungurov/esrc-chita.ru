require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :type => "Type",
        :question_text => "Question Text",
        :position => 1,
        :answer_options => "MyText",
        :validation_rules => "MyText"
      ),
      stub_model(Question,
        :type => "Type",
        :question_text => "Question Text",
        :position => 1,
        :answer_options => "MyText",
        :validation_rules => "MyText"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Question Text".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
