require 'spec_helper'

describe "tenures/edit" do
  before(:each) do
    @tenure = assign(:tenure, stub_model(Tenure))
  end

  it "renders the edit tenure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tenure_path(@tenure), "post" do
    end
  end
end
