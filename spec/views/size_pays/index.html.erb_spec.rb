require 'spec_helper'

describe "size_pays/index" do
  before(:each) do
    assign(:size_pays, [
      stub_model(SizePay),
      stub_model(SizePay)
    ])
  end

  it "renders a list of size_pays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
