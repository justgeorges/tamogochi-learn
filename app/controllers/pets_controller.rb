class PetsController < ApplicationController
  def create
    @pet = Pet.new(pet_params)
  end

  @pet.age = 0

  private

  def pet_params
    params.require(:name, :age, :happiness, :alive?)
  end
end
