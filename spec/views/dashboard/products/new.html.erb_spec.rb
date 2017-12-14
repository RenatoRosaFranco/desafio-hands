require 'rails_helper'

RSpec.describe "dashboard/products/new", type: :view do
  before(:each) do
    assign(:dashboard_product, Dashboard::Product.new(
      :logo => "MyString",
      :name => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new dashboard_product form" do
    render

    assert_select "form[action=?][method=?]", dashboard_products_path, "post" do

      assert_select "input[name=?]", "dashboard_product[logo]"

      assert_select "input[name=?]", "dashboard_product[name]"

      assert_select "textarea[name=?]", "dashboard_product[description]"

      assert_select "input[name=?]", "dashboard_product[slug]"

      assert_select "input[name=?]", "dashboard_product[tags]"
    end
  end
end
