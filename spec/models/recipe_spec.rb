require 'rails_helper'

describe Recipe, type: :model do
  it { is_expected.to belong_to :user }
  it { is_expected.to have_many(:recipe_ingredients).dependent(:destroy) }
  it { is_expected.to have_many(:recipe_steps).dependent(:destroy) }
  it { is_expected.to validate_presence_of(:name) }

  it "validates uniqueness of name within user scope" do
    user = create(:user)
    original = create(:recipe, name: 'Test', user: user)
    duplicate = build(:recipe, name: 'Test', user: user)
    expect(duplicate).to be_invalid
    expect(duplicate.errors[:name]).to include("has already been taken")
    duplicate.user = create(:user)
    expect(duplicate).to be_valid
  end
end
