require 'spec_helper'

describe "jurisdictions/show" do
  before(:each) do
    @jurisdiction = assign(:jurisdiction, stub_model(Jurisdiction))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
