require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      create(:recipe, name: "Name"),
      create(:recipe, name: "Name")
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
