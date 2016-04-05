require 'spec_helper'

describe "payment_infos/edit" do
  before(:each) do
    @payment_info = assign(:payment_info, stub_model(PaymentInfo,
      :title => "MyText",
      :text => "MyText"
    ))
  end

  it "renders the edit payment_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_info_path(@payment_info), "post" do
      assert_select "textarea#payment_info_title[name=?]", "payment_info[title]"
      assert_select "textarea#payment_info_text[name=?]", "payment_info[text]"
    end
  end
end
