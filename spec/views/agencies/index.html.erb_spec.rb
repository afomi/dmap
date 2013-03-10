require 'spec_helper'

describe "agencies/index" do
  before(:each) do
    assign(:agencies, [
      stub_model(Agency),
      stub_model(Agency)
    ])
  end

  it "renders a list of agencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
