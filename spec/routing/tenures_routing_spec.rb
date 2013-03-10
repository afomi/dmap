require "spec_helper"

describe TenuresController do
  describe "routing" do

    it "routes to #index" do
      get("/tenures").should route_to("tenures#index")
    end

    it "routes to #new" do
      get("/tenures/new").should route_to("tenures#new")
    end

    it "routes to #show" do
      get("/tenures/1").should route_to("tenures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tenures/1/edit").should route_to("tenures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tenures").should route_to("tenures#create")
    end

    it "routes to #update" do
      put("/tenures/1").should route_to("tenures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tenures/1").should route_to("tenures#destroy", :id => "1")
    end

  end
end
