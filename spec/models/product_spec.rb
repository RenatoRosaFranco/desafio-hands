require 'rails_helper'
require 'spec_helper'

RSpec.describe Product, type: :model do

  subject { Product.create(:product, :user) }

  context "validations" do
    it "have valid factory" do
      expect(subject).to be_valid
    end
  end
  context "associations" do
    it "belong to user" do
      should belong_to(:user)
    end
  end
end
