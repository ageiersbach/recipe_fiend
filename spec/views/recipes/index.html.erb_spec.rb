require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:recipes) do
    [
      create(:recipe, name: "Name", user: user1),
      create(:recipe, name: "Name", user: user2)
    ]
  end

  before(:each) do
    allow(view).to receive(:current_user).and_return(user1)
    assign(:recipes, recipes)
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
