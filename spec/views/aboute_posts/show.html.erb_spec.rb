require 'spec_helper'

describe "aboute_posts/show" do
  before(:each) do
    @aboute_post = assign(:aboute_post, stub_model(AboutePost,
      :title => "Title",
      :text => "MyText",
      :aboute => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
