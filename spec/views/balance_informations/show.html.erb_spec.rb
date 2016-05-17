require 'spec_helper'

describe "balance_informations/show" do
  before(:each) do
    @balance_information = assign(:balance_information, stub_model(BalanceInformation,
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
