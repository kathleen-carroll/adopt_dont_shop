class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def pets
    @shelter = Shelter.find(params[:shelter_id])
    # @pets = Pet.all
    # @shelter_id = params[:shelter_id]
  end
  # def find_shelter
  #   require "pry"; binding.pry
  # end

  def new
    @shelter = Shelter.find(params[:id])
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    shelter = Shelter.find(params[:id])
    # require "pry"; binding.pry
    # pet = Pet.new(pet_params)
    shelter.pets.create(pet_params)
    # pet.save

    redirect_to "/shelters/#{shelter.id}/pets"
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(
      {
      name: params[:pet][:name],
      approximate_age: params[:pet][:approximate_age],
      image_src: params[:pet][:image_src],
      status: params[:pet][:status],
      description: params[:pet][:description]
      }
    )

    pet.save
    redirect_to "/pets/#{pet.id}"
  end

  def destroy
    Pet.destroy(params[:id])
    redirect_to '/pets'
  end

  private

  def pet_params
    params.permit(:image_src, :name, :approximate_age, :sex, :description, :status)
  end
end
