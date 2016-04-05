require 'spec_helper'

describe "social_services/new" do
  before(:each) do
    assign(:social_service, stub_model(SocialService).as_new_record)
  end

  it "renders new social_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", social_services_path, "post" do
    end
  end
end
