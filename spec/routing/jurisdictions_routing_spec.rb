require "spec_helper"

describe JurisdictionsController do
  describe "routing" do

    it "routes to #index" do
      get("/jurisdictions").should route_to("jurisdictions#index")
    end

    it "routes to #new" do
      get("/jurisdictions/new").should route_to("jurisdictions#new")
    end

    it "routes to #show" do
      get("/jurisdictions/1").should route_to("jurisdictions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jurisdictions/1/edit").should route_to("jurisdictions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jurisdictions").should route_to("jurisdictions#create")
    end

    it "routes to #update" do
      put("/jurisdictions/1").should route_to("jurisdictions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jurisdictions/1").should route_to("jurisdictions#destroy", :id => "1")
    end

  end
end
