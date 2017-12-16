require 'rails_helper'
require 'spec_helper'

RSpec.describe Product, type: :model do

  before  { @user = FactoryGirl.create(:user) }
  subject { FactoryGirl.create(:product, user: @user) }

  context "validations" do
    it "should be a valid object" do
      expect(subject).to be_valid
    end
    it "should not be a valid object" do
      subject.name = nil
      expect(subject).not_to be_valid
    end
    it 'attributes should be present' do
      should validate_presence_of :name
      should validate_presence_of :description
      should validate_presence_of :tags
    end
  end
  context "attributes" do
    it "should respond to all attributes" do
      expect(subject).to respond_to :logo
      expect(subject).to respond_to :name
      expect(subject).to respond_to :description
      expect(subject).to respond_to :slug
      expect(subject).to respond_to :tags
      expect(subject).to respond_to :user
    end
  end
  context "associations" do
    it "belong to user" do
      should belong_to(:user)
    end
  end
end
