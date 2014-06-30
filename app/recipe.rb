class Recipe

  def title
    @title ||= [
      "Arroz con Pollo",
      "Roast Beef Meatballs with Arugula, Oven Dried Tomatoes, Horseradish Crema, and Garlic Toast"
    ][1]
  end

end
