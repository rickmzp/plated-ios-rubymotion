class RecipeOverviewViewController < UIViewController

  extend IB
  outlet :titleLabel, UILabel

  def loadView
    titleLabel.text = recipe.title
  end

  def recipe
    @recipe ||= Recipe.new
  end

end
