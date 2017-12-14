require 'rails_helper'

RSpec.describe "dashboard/products/index", type: :view do
  before(:each) do
    assign(:dashboard_products, [
      Dashboard::Product.create!(
        :logo => "Logo",
        :name => "Name",
        :description => "MyText",
        :slug => "Slug",
        :tags => "Tags"
      ),
      Dashboard::Product.create!(
        :logo => "Logo",
        :name => "Name",
        :description => "MyText",
        :slug => "Slug",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of dashboard/products" do
    render
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
