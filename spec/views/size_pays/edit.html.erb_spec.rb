require 'spec_helper'

describe "size_pays/edit" do
  before(:each) do
    @size_pay = assign(:size_pay, stub_model(SizePay))
  end

  it "renders the edit size_pay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", size_pay_path(@size_pay), "post" do
    end
  end
end
