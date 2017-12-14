require 'rails_helper'
require 'spec_helper'

RSpec.describe Case do

  # subject { FactoryGirl.create(:case) }

  context "associations" do
    it "belongs to user" do
      binding.pry
      should belong_to(:user)
    end
  end

end
