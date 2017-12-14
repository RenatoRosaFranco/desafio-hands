require 'rails_helper'

RSpec.describe "Dashboard::Users", type: :request do
  describe "GET /dashboard_users" do
    it "works! (now write some real specs)" do
      get dashboard_users_path
      expect(response).to have_http_status(200)
    end
  end
end
