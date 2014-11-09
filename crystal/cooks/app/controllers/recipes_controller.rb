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
    @recipe = Recipe.find(params[:id])
  end

  def show
    @recipe = Recipe.find(params[:id])
    @measurements = @recipe.measurements
    @ingredients = @recipe.ingredients
    @m_array = []
    @i_array = []
    @meas_id_array = []
    @measurements.each do |m|
      @m_array.push(m.percent)
      @meas_id_array.push(m.id)
    end
    @ingredients.each do |i|
      @i_array.push(i.name)
    end
    @combined = @m_array.zip(@i_array, @meas_id_array)
  end

  def update
    @recipe = Recipe.find(params[:id])
    if (@recipe.user_id==session[:user_id]) && @recipe.update(params.require(:recipe).permit(:title, :description, :public))
      redirect_to recipe_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    #Erecipe.measurements.each do destroy each one associated
  end

end
