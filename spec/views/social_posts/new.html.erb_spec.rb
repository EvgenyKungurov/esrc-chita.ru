require 'spec_helper'

describe "social_posts/new" do
  before(:each) do
    assign(:social_post, stub_model(SocialPost,
      :title => "MyText",
      :text => "MyText",
      :social_id => 1
    ).as_new_record)
  end

  it "renders new social_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", social_posts_path, "post" do
      assert_select "textarea#social_post_title[name=?]", "social_post[title]"
      assert_select "textarea#social_post_text[name=?]", "social_post[text]"
      assert_select "input#social_post_social_id[name=?]", "social_post[social_id]"
    end
  end
end
