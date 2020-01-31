class PetsController < ApplicationController
  def index
      @pets = Pet.all
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
