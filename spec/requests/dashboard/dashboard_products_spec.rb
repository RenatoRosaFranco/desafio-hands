require 'rails_helper'

RSpec.describe "Dashboard::Products", type: :request do
  describe "GET /dashboard_products" do
    it "works! (now write some real specs)" do
      get dashboard_products_path
      expect(response).to have_http_status(200)
    end
  end
end
