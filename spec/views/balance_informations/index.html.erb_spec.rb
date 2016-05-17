require 'spec_helper'

describe "balance_informations/index" do
  before(:each) do
    assign(:balance_informations, [
      stub_model(BalanceInformation,
        :title => "Title",
        :content => "MyText"
      ),
      stub_model(BalanceInformation,
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of balance_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
