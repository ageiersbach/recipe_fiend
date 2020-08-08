class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipe_steps, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :user_id }
end
