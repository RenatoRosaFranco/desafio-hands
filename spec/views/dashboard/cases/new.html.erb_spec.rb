require 'rails_helper'

RSpec.describe "dashboard/cases/new", type: :view do
  before(:each) do
    assign(:dashboard_case, Dashboard::Case.new(
      :logo => "MyString",
      :name => "MyString",
      :description => "MyText",
      :link => "MyString",
      :slug => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_case form" do
    render

    assert_select "form[action=?][method=?]", dashboard_cases_path, "post" do

      assert_select "input[name=?]", "dashboard_case[logo]"

      assert_select "input[name=?]", "dashboard_case[name]"

      assert_select "textarea[name=?]", "dashboard_case[description]"

      assert_select "input[name=?]", "dashboard_case[link]"

      assert_select "input[name=?]", "dashboard_case[slug]"

      assert_select "input[name=?]", "dashboard_case[tags]"
    end
  end
end
