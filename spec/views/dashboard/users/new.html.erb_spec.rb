require 'rails_helper'

RSpec.describe "dashboard/users/new", type: :view do
  before(:each) do
    assign(:dashboard_user, Dashboard::User.new(
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ))
  end

  it "renders new dashboard_user form" do
    render

    assert_select "form[action=?][method=?]", dashboard_users_path, "post" do

      assert_select "input[name=?]", "dashboard_user[email]"

      assert_select "input[name=?]", "dashboard_user[password]"

      assert_select "input[name=?]", "dashboard_user[password_confirmation]"
    end
  end
end
