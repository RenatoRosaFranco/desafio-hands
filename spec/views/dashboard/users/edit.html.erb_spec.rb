require 'rails_helper'

RSpec.describe "dashboard/users/edit", type: :view do
  before(:each) do
    @dashboard_user = assign(:dashboard_user, Dashboard::User.create!(
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ))
  end

  it "renders the edit dashboard_user form" do
    render

    assert_select "form[action=?][method=?]", dashboard_user_path(@dashboard_user), "post" do

      assert_select "input[name=?]", "dashboard_user[email]"

      assert_select "input[name=?]", "dashboard_user[password]"

      assert_select "input[name=?]", "dashboard_user[password_confirmation]"
    end
  end
end
