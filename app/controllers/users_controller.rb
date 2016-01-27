class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new( whitelisted_user_params )
    if @user.save
      flash[:notice] = "Successfully created a new user!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "I have a bad feeling about this. User not created."
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update( whitelisted_user_params )
      flash[:notice] = "Successfully updated a user!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "I have a bad feeling about this. User not created."
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User destroyed by the dark side."
      redirect_to root_path
    else
      flash[:alert] = "Unable to destroy user."
      redirect_to user_path(@user)
    end
  end

  private

  def whitelisted_user_params
    params.require(:user).permit(:name, :age, :gender, :seeking_gender, :species, :species_class, :skin, :hair, :eyes, :vehicle, :language, :height, :mass, :lifespan, :seeking_age)
  end
end
