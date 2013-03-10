require 'spec_helper'

describe "jurisdictions/new" do
  before(:each) do
    assign(:jurisdiction, stub_model(Jurisdiction).as_new_record)
  end

  it "renders new jurisdiction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jurisdictions_path, "post" do
    end
  end
end
