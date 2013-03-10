require "spec_helper"

describe BodiesController do
  describe "routing" do

    it "routes to #index" do
      get("/bodies").should route_to("bodies#index")
    end

    it "routes to #new" do
      get("/bodies/new").should route_to("bodies#new")
    end

    it "routes to #show" do
      get("/bodies/1").should route_to("bodies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bodies/1/edit").should route_to("bodies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bodies").should route_to("bodies#create")
    end

    it "routes to #update" do
      put("/bodies/1").should route_to("bodies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bodies/1").should route_to("bodies#destroy", :id => "1")
    end

  end
end
