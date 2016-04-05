require 'spec_helper'

describe "payment_infos/index" do
  before(:each) do
    assign(:payment_infos, [
      stub_model(PaymentInfo,
        :title => "MyText",
        :text => "MyText"
      ),
      stub_model(PaymentInfo,
        :title => "MyText",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of payment_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
