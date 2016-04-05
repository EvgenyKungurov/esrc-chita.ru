require "spec_helper"

describe PaymentInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/payment_infos").should route_to("payment_infos#index")
    end

    it "routes to #new" do
      get("/payment_infos/new").should route_to("payment_infos#new")
    end

    it "routes to #show" do
      get("/payment_infos/1").should route_to("payment_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payment_infos/1/edit").should route_to("payment_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payment_infos").should route_to("payment_infos#create")
    end

    it "routes to #update" do
      put("/payment_infos/1").should route_to("payment_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payment_infos/1").should route_to("payment_infos#destroy", :id => "1")
    end

  end
end
