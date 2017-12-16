require 'spec_helper'
require 'rails_helper'

RSpec.describe Dashboard::ProductsController, type: :controller do

  let(:user) { FactoryGirl.create(:admin) }
  let(:valid_session) { sign_in user }
  let(:product) { FactoryGirl.create(:product, user: user) }

  # Valid attributes
  let(:valid_attributes) {
    {
      name: "A product",
      description: "A simple product",
      tags: '#product #another-product',
      user_id: user.id
    }
  }

  describe 'GET #index' do
    it 'return a success response' do
      product = Product.create! valid_attributes
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
    it 'return a new template' do
      product = Product.create! valid_attributes
      get :new, params: {}, session: valid_session
      expect(response).to render_template :new
    end
  end

  describe 'GET #new' do
     it 'returns a success response' do
       product = Product.create! valid_attributes
       get :index, params: {}, session: valid_session
       expect(response).to be_success
     end
  end

  describe 'POST #create' do
    it 'should create a case' do
      expect {
        post :create, params: { product: FactoryGirl.attributes_for(:product) },
        session: valid_session
      }.to change(Product.all, :count).by(1)
    end
    it 'redirect to the created product' do
      post :create, params: { product: FactoryGirl.attributes_for(:product) },
      session: valid_session
      expect(response).to redirect_to dashboard_product_path(Product.last)
    end
  end

  describe 'GET #show' do
    it 'should return a product' do
      get :show, params: { id: product.id }
      expect(response).to be_success
    end
    it 'should render show' do
      get :show, params: { id: product.id }
      expect(response).to be_success
    end
  end

  describe 'GET #edit' do
    it 'should return a product' do
      get :edit, params: { id: product.id }
      expect(response).to be_success
    end
    it 'should render edit' do
      get :edit, params: { id: product.id }
      expect(response).to render_template :edit
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
       let(:new_attributes) { FactoryGirl.attributes_for(:product) }
       it 'updates the requested product' do
          product = Product.create! valid_attributes
          put :update, params: { id: product.id, product: new_attributes },
           session: valid_session
          product.reload
          expect(response).to redirect_to dashboard_product_path(product)
       end
    end

    it 'redirects to the dashboard product' do
       product = Product.create! valid_attributes
       put :update, params: { id: product.id, product: valid_attributes },
        session: valid_session
        expect(response).to redirect_to dashboard_product_path(product)
    end
  end

  describe 'DELETE #destroy' do
    product = FactoryGirl.create(:product)
    it 'should destroy a product' do
      product = Product.create! valid_attributes
      expect {
        delete :destroy, params: { id: product.id }, session: valid_session
      }.to change(Product.all, :count).by(-1)
    end
    it 'redirects to the dashboard_products list' do
      product = Product.create! valid_attributes
      delete :destroy, params: { id: product.id }, session: valid_session
      expect(response).to redirect_to dashboard_products_path
    end
  end
end
