require "spec_helper"

describe SizePaysController do
  describe "routing" do

    it "routes to #index" do
      get("/size_pays").should route_to("size_pays#index")
    end

    it "routes to #new" do
      get("/size_pays/new").should route_to("size_pays#new")
    end

    it "routes to #show" do
      get("/size_pays/1").should route_to("size_pays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/size_pays/1/edit").should route_to("size_pays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/size_pays").should route_to("size_pays#create")
    end

    it "routes to #update" do
      put("/size_pays/1").should route_to("size_pays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/size_pays/1").should route_to("size_pays#destroy", :id => "1")
    end

  end
end
