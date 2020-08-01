class RecipePolicy
  attr_reader :user, :recipe

  def initialize(user, recipe)
    @user = user
    @recipe = recipe
  end

  def create? ; true ; end
  def index?  ; true ; end
  def show?   ; true ; end
  def new?    ; true ; end

  def edit?
    recipe_belongs_to_user?
  end

  def update?
    recipe_belongs_to_user?
  end

  def destroy?
    recipe_belongs_to_user?
  end

  private

  def recipe_belongs_to_user?
    @recipe.user_id == @user.id
  end

end
