require 'spec_helper'

describe "size_pays/show" do
  before(:each) do
    @size_pay = assign(:size_pay, stub_model(SizePay))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
