require 'spec_helper'

describe "balance_informations/edit" do
  before(:each) do
    @balance_information = assign(:balance_information, stub_model(BalanceInformation,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit balance_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", balance_information_path(@balance_information), "post" do
      assert_select "input#balance_information_title[name=?]", "balance_information[title]"
      assert_select "textarea#balance_information_content[name=?]", "balance_information[content]"
    end
  end
end
