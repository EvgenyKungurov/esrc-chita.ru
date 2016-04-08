require "spec_helper"

describe AboutePostsController do
  describe "routing" do

    it "routes to #index" do
      get("/aboute_posts").should route_to("aboute_posts#index")
    end

    it "routes to #new" do
      get("/aboute_posts/new").should route_to("aboute_posts#new")
    end

    it "routes to #show" do
      get("/aboute_posts/1").should route_to("aboute_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aboute_posts/1/edit").should route_to("aboute_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aboute_posts").should route_to("aboute_posts#create")
    end

    it "routes to #update" do
      put("/aboute_posts/1").should route_to("aboute_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aboute_posts/1").should route_to("aboute_posts#destroy", :id => "1")
    end

  end
end
