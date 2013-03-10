require 'spec_helper'

describe "jurisdictions/index" do
  before(:each) do
    assign(:jurisdictions, [
      stub_model(Jurisdiction),
      stub_model(Jurisdiction)
    ])
  end

  it "renders a list of jurisdictions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
