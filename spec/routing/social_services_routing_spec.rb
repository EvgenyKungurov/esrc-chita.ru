require "spec_helper"

describe SocialServicesController do
  describe "routing" do

    it "routes to #index" do
      get("/social_services").should route_to("social_services#index")
    end

    it "routes to #new" do
      get("/social_services/new").should route_to("social_services#new")
    end

    it "routes to #show" do
      get("/social_services/1").should route_to("social_services#show", :id => "1")
    end

    it "routes to #edit" do
      get("/social_services/1/edit").should route_to("social_services#edit", :id => "1")
    end

    it "routes to #create" do
      post("/social_services").should route_to("social_services#create")
    end

    it "routes to #update" do
      put("/social_services/1").should route_to("social_services#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/social_services/1").should route_to("social_services#destroy", :id => "1")
    end

  end
end
