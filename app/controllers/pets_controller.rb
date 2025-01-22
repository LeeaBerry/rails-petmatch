class PetsController < ApplicationController

  def index
    if params[:pet_type].present?
      @pets = Pet.where(pet_type: params[:pet_type])  # Filters by pet_type
    else
      @pets = Pet.all  # else shows ALL pets
    end
end

  def show
    @pet = Pet.find(params[:id])
  end
end
