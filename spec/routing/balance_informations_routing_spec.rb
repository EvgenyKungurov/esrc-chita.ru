require "spec_helper"

describe BalanceInformationsController do
  describe "routing" do

    it "routes to #index" do
      get("/balance_informations").should route_to("balance_informations#index")
    end

    it "routes to #new" do
      get("/balance_informations/new").should route_to("balance_informations#new")
    end

    it "routes to #show" do
      get("/balance_informations/1").should route_to("balance_informations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/balance_informations/1/edit").should route_to("balance_informations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/balance_informations").should route_to("balance_informations#create")
    end

    it "routes to #update" do
      put("/balance_informations/1").should route_to("balance_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/balance_informations/1").should route_to("balance_informations#destroy", :id => "1")
    end

  end
end
