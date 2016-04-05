require 'spec_helper'

describe "payment_infos/show" do
  before(:each) do
    @payment_info = assign(:payment_info, stub_model(PaymentInfo,
      :title => "MyText",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
