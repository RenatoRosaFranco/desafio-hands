require "rails_helper"

RSpec.describe Dashboard::ProductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/products").to route_to("dashboard/products#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/products/new").to route_to("dashboard/products#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/products/1").to route_to("dashboard/products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/products/1/edit").to route_to("dashboard/products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/products").to route_to("dashboard/products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/products/1").to route_to("dashboard/products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/products/1").to route_to("dashboard/products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/products/1").to route_to("dashboard/products#destroy", :id => "1")
    end

  end
end
