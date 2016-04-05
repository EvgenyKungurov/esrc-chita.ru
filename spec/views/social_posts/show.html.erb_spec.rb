require 'spec_helper'

describe "social_posts/show" do
  before(:each) do
    @social_post = assign(:social_post, stub_model(SocialPost,
      :title => "MyText",
      :text => "MyText",
      :social_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
