require 'spec_helper'
require 'rails_helper'

RSpec.describe Dashboard::CasesController, type: :controller do

  let(:user) { FactoryGirl.create(:admin) }

  let(:valid_attributes) {
    {
      name: "CODE7EVEN",
      description: "Software House and consultance",
      link: "code7even.com",
      tags: '#code7even #software-house #development',
      user_id: user.id
    }
  }

  let(:valid_session) { sign_in user }

  let(:c) { FactoryGirl.create(:case, user: user) }

  describe 'GET #index' do
    it 'returns a success response' do
      c = Case.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #new' do
    it 'return a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    it 'should create a case' do
      expect {
        post :create, params: { case: FactoryGirl.attributes_for(:case) },
         session: valid_session
      }.to change(Case.all, :count).by(1)
    end
    it 'redirect to the created case' do
      post :create, params: { case: FactoryGirl.attributes_for(:case) },
        session: valid_session
      expect(response).to redirect_to dashboard_case_path(Case.last)
    end
  end

  describe 'GET #show' do
    it 'should return a case' do
       get :show, params: { id: c.id }
       expect(response).to be_success
    end
    it 'should render show' do
      get :show, params: { id: c.id }
      expect(response).to be_success
    end
  end

  describe 'GET #edit' do
     it 'should return a case' do
       get :edit, params: { id: c.id }
       expect(response).to be_success
     end
     it 'should render edit' do
       get :edit, params: { id: c.id }
       expect(response).to render_template :edit
     end
  end

  describe 'PUT #update' do
    context 'with valid_params' do
     let(:new_attributes) { FactoryGirl.attributes_for(:case) }
    it 'updates the requested case' do
      c = Case.create! valid_attributes
      put :update, params: { id: c.id, case: new_attributes }, session: valid_session
      c.reload
      expect(response).to redirect_to dashboard_case_path(c)
    end
  end

    it 'redirects to the dashboard case' do
      c = Case.create! valid_attributes
      put :update, params: { id: c.id, case: valid_attributes }, session: valid_session
      expect(response).to redirect_to dashboard_case_path(c)
    end
  end

  describe 'DELETE #destroy' do
    cases = FactoryGirl.create(:case)
    it 'should destroy a case' do
       c = Case.create! valid_attributes
       expect {
        delete :destroy, params: { id: c.id }, session: valid_session
      }.to change(Case.all, :count).by(-1)
    end
    it 'redirects to the dashboard_cases list' do
      c = Case.create! valid_attributes
      delete :destroy, params: { id: c.id }, session: valid_session
      expect(response).to redirect_to dashboard_cases_path
    end
  end
end
