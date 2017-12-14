require 'rails_helper'

RSpec.describe "Dashboard::Cases", type: :request do
  describe "GET /dashboard_cases" do
    it "works! (now write some real specs)" do
      get dashboard_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
