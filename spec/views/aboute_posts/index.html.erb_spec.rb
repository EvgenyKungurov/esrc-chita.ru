require 'spec_helper'

describe "aboute_posts/index" do
  before(:each) do
    assign(:aboute_posts, [
      stub_model(AboutePost,
        :title => "Title",
        :text => "MyText",
        :aboute => nil
      ),
      stub_model(AboutePost,
        :title => "Title",
        :text => "MyText",
        :aboute => nil
      )
    ])
  end

  it "renders a list of aboute_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
