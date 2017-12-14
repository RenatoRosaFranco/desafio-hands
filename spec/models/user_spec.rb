require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  subject { FactoryGirl.create(:user) }

  context "Validations" do
    it "has a valid factory" do
       expect(subject).to be_valid
    end
  end

  context ".associations" do
    it "have many cases" do
      binding.pry
      should have_many(:cases)
    end
    it "have many products" do
      should have_many(:products)
    end
  end

end
