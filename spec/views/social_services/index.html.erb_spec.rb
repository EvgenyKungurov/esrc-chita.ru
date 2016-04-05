require 'spec_helper'

describe "social_services/index" do
  before(:each) do
    assign(:social_services, [
      stub_model(SocialService),
      stub_model(SocialService)
    ])
  end

  it "renders a list of social_services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
