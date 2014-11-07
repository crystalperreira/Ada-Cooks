class RecipesController < ApplicationController

  def index 
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.save
      redirect_to recipe_path(@recipe_form.recipe.id)
    else
      render :new
    end
  end

  def new
    
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
