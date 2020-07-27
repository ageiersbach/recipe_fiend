require 'rails_helper'

describe Recipe, type: :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to have_many(:recipe_ingredients).dependent(:destroy) }
  it { is_expected.to have_many(:recipe_steps).dependent(:destroy) }
end
