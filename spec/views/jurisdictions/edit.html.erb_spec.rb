require 'spec_helper'

describe "jurisdictions/edit" do
  before(:each) do
    @jurisdiction = assign(:jurisdiction, stub_model(Jurisdiction))
  end

  it "renders the edit jurisdiction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jurisdiction_path(@jurisdiction), "post" do
    end
  end
end
