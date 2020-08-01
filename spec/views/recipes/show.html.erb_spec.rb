require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = create(:recipe)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
