class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def pets
    @pets = Pet.all
  end
  # def find_shelter
  #   require "pry"; binding.pry
  # end

  def new
    @shelter_id = params[:shelter_id]
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    # shelter = Shelter.find(params[:shelter_id])
    require "pry"; binding.pry
    pet = Pet.new({
      name: params[:pet][:name],
      approximate_age: params[:pet][:approximate_age],
      sex: params[:pet][:sex],
      description: params[:pet][:description],
      image_src: params[:pet][:image_src],
      status: params[:pet][:status],
      shelter_id: params[:pet][:shelter_id]
      })
require "pry"; binding.pry
    pet.save

    redirect_to "/shelters/#{pet.shelter_id}/pets"
  end
end
