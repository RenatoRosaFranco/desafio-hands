require 'rails_helper'

RSpec.describe "dashboard/cases/edit", type: :view do
  before(:each) do
    @dashboard_case = assign(:dashboard_case, Dashboard::Case.create!(
      :logo => "MyString",
      :name => "MyString",
      :description => "MyText",
      :link => "MyString",
      :slug => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit dashboard_case form" do
    render

    assert_select "form[action=?][method=?]", dashboard_case_path(@dashboard_case), "post" do

      assert_select "input[name=?]", "dashboard_case[logo]"

      assert_select "input[name=?]", "dashboard_case[name]"

      assert_select "textarea[name=?]", "dashboard_case[description]"

      assert_select "input[name=?]", "dashboard_case[link]"

      assert_select "input[name=?]", "dashboard_case[slug]"

      assert_select "input[name=?]", "dashboard_case[tags]"
    end
  end
end
