class MeasurementsController < ApplicationController

  def index 
  end

  def create
    raise
    @measurement = Measurement.new(params.require(:measurement).permit(:percent, :ingredient_id, :recipe_id))
    if @measurement.save
      redirect_to recipe_path(@measurement.recipe_id)
    else
     render :new  
    end
  end

  def new
    @measurement = Measurement.new
  end
  
  def edit
    @measurement = Measurement.find(params[:id])
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

  def update
    @measurement = Measurement.find(params[:id])
    if (@measurement.recipe.user_id==session[:user_id]) && @measurement.update(params.require(:measurement).permit(:percent))
      redirect_to recipe_path(@measurement.recipe_id)
    else
      redirect to edit_measurement_path(@measurement.id)
    end
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    id_holder = @measurement.recipe_id
    @measurement.destroy
    redirect_to recipe_path(id_holder) 
  end

end
