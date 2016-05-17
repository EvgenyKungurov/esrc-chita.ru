require 'spec_helper'

describe "balance_informations/new" do
  before(:each) do
    assign(:balance_information, stub_model(BalanceInformation,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new balance_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", balance_informations_path, "post" do
      assert_select "input#balance_information_title[name=?]", "balance_information[title]"
      assert_select "textarea#balance_information_content[name=?]", "balance_information[content]"
    end
  end
end
