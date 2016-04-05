require 'spec_helper'

describe "social_services/edit" do
  before(:each) do
    @social_service = assign(:social_service, stub_model(SocialService))
  end

  it "renders the edit social_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", social_service_path(@social_service), "post" do
    end
  end
end
