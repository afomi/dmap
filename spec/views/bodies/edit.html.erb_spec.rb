require 'spec_helper'

describe "bodies/edit" do
  before(:each) do
    @body = assign(:body, stub_model(Body))
  end

  it "renders the edit body form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", body_path(@body), "post" do
    end
  end
end
