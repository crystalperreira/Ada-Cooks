class RecipeForm 
  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def save
    @recipe = Recipe.create(title: @attributes[:title], description: @attributes[:description], public: @attributes[:public], user_id: @attributes[:session])
    @attributes[:ingredients].each do |hash|
        if hash.flatten[1][:checked]
          new = Measurement.new
          new.ingredient_id = hash.flatten[0]
          new.recipe_id = @recipe.id
          new.percent = hash.flatten[1][:percent]
          new.save
        end
    end
  end

end
