require 'spec_helper'

describe "payment_infos/new" do
  before(:each) do
    assign(:payment_info, stub_model(PaymentInfo,
      :title => "MyText",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new payment_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_infos_path, "post" do
      assert_select "textarea#payment_info_title[name=?]", "payment_info[title]"
      assert_select "textarea#payment_info_text[name=?]", "payment_info[text]"
    end
  end
end
