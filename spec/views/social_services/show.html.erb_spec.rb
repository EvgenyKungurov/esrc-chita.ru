require 'spec_helper'

describe "social_services/show" do
  before(:each) do
    @social_service = assign(:social_service, stub_model(SocialService))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
