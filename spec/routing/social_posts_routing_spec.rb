require "spec_helper"

describe SocialPostsController do
  describe "routing" do

    it "routes to #index" do
      get("/social_posts").should route_to("social_posts#index")
    end

    it "routes to #new" do
      get("/social_posts/new").should route_to("social_posts#new")
    end

    it "routes to #show" do
      get("/social_posts/1").should route_to("social_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/social_posts/1/edit").should route_to("social_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/social_posts").should route_to("social_posts#create")
    end

    it "routes to #update" do
      put("/social_posts/1").should route_to("social_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/social_posts/1").should route_to("social_posts#destroy", :id => "1")
    end

  end
end
