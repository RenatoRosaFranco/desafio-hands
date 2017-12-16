require 'rails_helper'

RSpec.describe API::V1::ProductsController, type: :controller do
  describe 'GET #index' do
    before { @user = FactoryGirl.create(:user) }
    let!(:products) { FactoryGirl.create(:product, user: @user) }
    before { get :index, method: "GET" }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    it 'return all products' do
      body = JSON.parse(response.body)
      expect(body.size).to eq(1)
    end
  end
end
