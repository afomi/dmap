require 'spec_helper'

describe "tenures/show" do
  before(:each) do
    @tenure = assign(:tenure, stub_model(Tenure))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
