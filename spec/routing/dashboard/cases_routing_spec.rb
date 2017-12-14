require "rails_helper"

RSpec.describe Dashboard::CasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/cases").to route_to("dashboard/cases#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/cases/new").to route_to("dashboard/cases#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/cases/1").to route_to("dashboard/cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/cases/1/edit").to route_to("dashboard/cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/cases").to route_to("dashboard/cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/cases/1").to route_to("dashboard/cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/cases/1").to route_to("dashboard/cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/cases/1").to route_to("dashboard/cases#destroy", :id => "1")
    end

  end
end
