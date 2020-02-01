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
end
