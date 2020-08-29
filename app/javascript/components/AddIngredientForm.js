import React from "react"
import PropTypes from "prop-types"
class AddIngredientForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = { isEditing: false, recipeId: props.recipeId, token: props.token };
  }

  onClickAddIngredientButton() {
    this.setState({
      isEditing: true
    });
  }

  render () {
    if (!this.state.isEditing) {
      return (
        <button class="btn btn-sm" onClick={() => this.onClickAddIngredientButton()}>
          Add Ingredient
        </button>
      );
    }

    let ingredientPath = `/recipes/${this.state.recipeId}/recipe_ingredients`;
    return (
      <div className="recipe-ingredient-form recipe-card">
        <form action={ingredientPath} method="post">

          <div className="field">
            <label for="recipe_ingredients_name">Ingredient:</label>
            <input name="recipe_ingredients[name]" type="text" />
          </div>

          <div className="field">
            <label for="recipe_ingredients_preparation">Preparation (chopped/etc):</label>
            <input name="recipe_ingredients[preparation]" type="text" />
          </div>

          <input name="authenticity_token" type="hidden" value={this.state.token} />
          <div class="actions">
            <input name="commit" type="submit" value="Add Ingredient" />
          </div>
        </form>
      </div>
    );
  }
}

AddIngredientForm.propTypes = {
  message: PropTypes.string
};
export default AddIngredientForm
