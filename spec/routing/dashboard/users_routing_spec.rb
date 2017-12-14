require "rails_helper"

RSpec.describe Dashboard::UsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/users").to route_to("dashboard/users#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/users/new").to route_to("dashboard/users#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/users/1").to route_to("dashboard/users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/users/1/edit").to route_to("dashboard/users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/users").to route_to("dashboard/users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/users/1").to route_to("dashboard/users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/users/1").to route_to("dashboard/users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/users/1").to route_to("dashboard/users#destroy", :id => "1")
    end

  end
end
