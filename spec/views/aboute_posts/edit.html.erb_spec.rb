require 'spec_helper'

describe "aboute_posts/edit" do
  before(:each) do
    @aboute_post = assign(:aboute_post, stub_model(AboutePost,
      :title => "MyString",
      :text => "MyText",
      :aboute => nil
    ))
  end

  it "renders the edit aboute_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aboute_post_path(@aboute_post), "post" do
      assert_select "input#aboute_post_title[name=?]", "aboute_post[title]"
      assert_select "textarea#aboute_post_text[name=?]", "aboute_post[text]"
      assert_select "input#aboute_post_aboute[name=?]", "aboute_post[aboute]"
    end
  end
end
