class SwCharactersController < ApplicationController

  def index
    @characters = SwCharacter.all
  end

  def new
    @character = SwCharacter.new
  end

  def create
    @character = SwCharacter.new( whitelisted_character_params )
    if @character.save
      flash[:notice] = "Nice shot, kid! Successfully created a new character!"
      redirect_to sw_character_path(@character)
    else
      flash[:alert] = "I have a bad feeling about this. Character not created."
      redirect_to new_sw_character_path
    end
  end

  def show
    @character = SwCharacter.find(params[:id])
  end

  def edit
    @character = SwCharacter.find(params[:id])
  end

  def update
    @character = SwCharacter.find(params[:id])
    if @character.update( whitelisted_character_params )
      flash[:notice] = "Nice shot, kid! Successfully updated a character!"
      redirect_to sw_character_path(@character)
    else
      flash[:alert] = "I have a bad feeling about this. SwCharacter not created."
      redirect_to edit_sw_character_path(@character)
    end
  end

  def destroy
    @character = SwCharacter.find(params[:id])
    if @character.destroy
      flash[:notice] = "Character destroyed by the dark side."
      redirect_to root_path
    else
      flash[:alert] = "Unable to destroy character."
      redirect_to sw_character_path(@character)
    end
  end

  private

  def whitelisted_character_params
    params.require(:character).permit(:name, :age, :gender, :seeking_gender, :species, :species_class, :skin, :hair, :eyes, :vehicle, :language, :height, :mass, :lifespan, :seeking_age)
  end
end
