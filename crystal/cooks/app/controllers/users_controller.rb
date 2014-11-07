class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :name, :password))
    if @user.save
      redirect_to root_path # change this later
    else
      render :new
    end
  end

  def new
    @user = User.new
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
