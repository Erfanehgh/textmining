require "spec_helper"

describe UserhasController do
  describe "routing" do

    it "routes to #index" do
      get("/userhas").should route_to("userhas#index")
    end

    it "routes to #new" do
      get("/userhas/new").should route_to("userhas#new")
    end

    it "routes to #show" do
      get("/userhas/1").should route_to("userhas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/userhas/1/edit").should route_to("userhas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/userhas").should route_to("userhas#create")
    end

    it "routes to #update" do
      put("/userhas/1").should route_to("userhas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/userhas/1").should route_to("userhas#destroy", :id => "1")
    end

  end
end
