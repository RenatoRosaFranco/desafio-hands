require 'rails_helper'
require 'spec_helper'

RSpec.describe Case do

  before(:each) { @user = FactoryGirl.create(:user) }
  subject { FactoryGirl.create(:case, user: @user) }

  context "validations" do
    it "should be a valid object" do
      expect(subject).to be_valid
    end
    it "should not be a valid object" do
     subject.name = nil
     expect(subject).not_to be_valid
    end
  end
  context "attibutes" do
    it "should respond to all attributes" do
     subject = Case.new
     expect(subject).to respond_to :name
     expect(subject).to respond_to :description
     expect(subject).to respond_to :link
     expect(subject).to respond_to :slug
     expect(subject).to respond_to :tags
     expect(subject).to respond_to :user
   end
  end
  context "associations" do
    it "belongs to user" do
      should belong_to(:user)
    end
  end
end
