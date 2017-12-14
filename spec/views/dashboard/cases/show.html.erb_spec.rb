require 'rails_helper'

RSpec.describe "dashboard/cases/show", type: :view do
  before(:each) do
    @dashboard_case = assign(:dashboard_case, Dashboard::Case.create!(
      :logo => "Logo",
      :name => "Name",
      :description => "MyText",
      :link => "Link",
      :slug => "Slug",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Tags/)
  end
end
