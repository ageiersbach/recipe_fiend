require 'rails_helper'

describe Recipe, type: :model do
  it { is_expected.to belong_to :user }
end
