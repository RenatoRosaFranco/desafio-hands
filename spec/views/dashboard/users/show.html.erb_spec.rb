require 'rails_helper'

RSpec.describe "dashboard/users/show", type: :view do
  before(:each) do
    @dashboard_user = assign(:dashboard_user, Dashboard::User.create!(
      :email => "Email",
      :password => "Password",
      :password_confirmation => "Password Confirmation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Password Confirmation/)
  end
end
