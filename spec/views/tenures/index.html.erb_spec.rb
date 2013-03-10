require 'spec_helper'

describe "tenures/index" do
  before(:each) do
    assign(:tenures, [
      stub_model(Tenure),
      stub_model(Tenure)
    ])
  end

  it "renders a list of tenures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
