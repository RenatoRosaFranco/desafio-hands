require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.create(:user) }
    context "validations" do
       it "should be a valid object" do
         expect(subject).to be_valid
       end
       it "should be a invalid object" do
          subject.email = nil
         expect(subject).not_to be_valid
       end
    end
    context 'attributes' do
      it 'respond to all attributes' do
        expect(subject).to respond_to :name
        expect(subject).to respond_to :email
        expect(subject).to respond_to :password
        expect(subject).to respond_to :password_confirmation
        expect(subject).to respond_to :admin
     end
  end
    context "associations" do
      it "should have many products" do
        expect(subject).to have_many :products
      end
      it "should have many cases" do
        expect(subject).to have_many :cases
      end
    end
end
