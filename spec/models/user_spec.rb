require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.create(:user) }
  describe '' do
    context '.attributes' do
      it 'respond to all attributes' do
        expect(subject).to respond_to :name
        expect(subject).to respond_to :email
        expect(subject).to respond_to :password
        expect(subject).to respond_to :password_confirmation
        expect(subject).to respond_to :admin
      end
    end
  end
  end
  describe '' do
    context '.admin' do
      it 'have admin access' do
        subject.admin = true
        expect(subject).to be_admin
      end
      it "haven't admin access" do
        expect(subject).to_not be_admin
      end
    end
  end
  describe '' do
    context '.associations' do
      it 'have many cases' do
        should have_many(:cases)
      end
      it 'have many products' do
        should have_many(:products)
      end
    end
  end
