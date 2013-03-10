require 'spec_helper'

describe "bodies/index" do
  before(:each) do
    assign(:bodies, [
      stub_model(Body),
      stub_model(Body)
    ])
  end

  it "renders a list of bodies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
