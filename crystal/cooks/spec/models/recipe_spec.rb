require 'rails_helper'

describe "Recipe" do
  
  it "assigns title to recipe" do
    recipe = Recipe.create(title: "Test") 
    expect(recipe.title).to eq "Test"
  end

  it "assigns description to recipe" do
    recipe = Recipe.create(description: "blah")
    expect(recipe.description).to eq "blah"
  end

  it "knows recipe has ingredients" do
    recipe = Recipe.create(id: 1000)
    ingredient = Ingredient.create(id: 1000, name: "noodle")
    measurement = Measurement.create(recipe_id: 1000, ingredient_id: 1000)
    expect(recipe.ingredients.first.name).to eq "noodle"
  end

  it "makes recipe public or private" do
    recipe = Recipe.create(public: false)
    expect(recipe.public).to eq false
  end

  it "give user_id to recipe" do 
    recipe = Recipe.create(user_id: 43)
    expect(recipe.user_id).to eq 43
  end

end 
