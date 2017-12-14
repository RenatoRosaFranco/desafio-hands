require 'rails_helper'

RSpec.describe "dashboard/products/show", type: :view do
  before(:each) do
    @dashboard_product = assign(:dashboard_product, Dashboard::Product.create!(
      :logo => "Logo",
      :name => "Name",
      :description => "MyText",
      :slug => "Slug",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Tags/)
  end
end
