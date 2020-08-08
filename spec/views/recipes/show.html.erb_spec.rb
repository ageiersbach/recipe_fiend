require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = create(:recipe, name: 'Best cookie', preheat_temp: '375')
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Best cookie/)
  end
end
