require 'spec_helper'

describe "bodies/new" do
  before(:each) do
    assign(:body, stub_model(Body).as_new_record)
  end

  it "renders new body form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bodies_path, "post" do
    end
  end
end
