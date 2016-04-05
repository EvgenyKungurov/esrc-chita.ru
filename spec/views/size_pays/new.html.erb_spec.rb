require 'spec_helper'

describe "size_pays/new" do
  before(:each) do
    assign(:size_pay, stub_model(SizePay).as_new_record)
  end

  it "renders new size_pay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", size_pays_path, "post" do
    end
  end
end
