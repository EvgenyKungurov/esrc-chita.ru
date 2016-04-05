require 'spec_helper'

describe "question_groups/edit" do
  before(:each) do
    @question_group = assign(:question_group, stub_model(QuestionGroup,
      :name => "MyString"
    ))
  end

  it "renders the edit question_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_group_path(@question_group), "post" do
      assert_select "input#question_group_name[name=?]", "question_group[name]"
    end
  end
end
