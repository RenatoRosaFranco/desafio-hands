require 'rails_helper'

RSpec.describe CasesController, type: :controller do
  describe 'GET #index' do
    let!(:cases) { FactoryGirl.create(:case) }
    before { get :index, method: "GET" }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'return all cases as json' do
      body = JSON.parse(response.body)
      expect(body.size).to eq(1)
    end
  end
end
