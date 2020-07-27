require 'rails_helper'

describe RecipeStep, type: :model do
  it { is_expected.to belong_to :recipe }
end
