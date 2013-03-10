require 'spec_helper'

describe "bodies/show" do
  before(:each) do
    @body = assign(:body, stub_model(Body))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
