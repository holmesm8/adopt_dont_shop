class PetsController < ApplicationController
  def index
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
      @pets = @shelter.pets
    else
      @pets = Pet.all
    end
  end

  def new
  end

  def create
    pet = Pet.new({
      image: params[:image],
      name: params[:name],
      description: params[:description],
      age: params[:age],
      sex: params[:sex],
      adoptable: params[:adoptable],
      shelter_id: params[:shelter_id]
      })

    pet.save

    redirect_to '/pets'
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
