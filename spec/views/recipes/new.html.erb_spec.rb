require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      name: "MyString"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[name]"
      assert_select "input[name=?]", "recipe[preheat_temp]"
      assert_select "select[name=?]", "recipe[preheat_celcius]"
    end
  end
end
