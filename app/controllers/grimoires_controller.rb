class GrimoiresController < ApplicationController
  def index
    @grimoires = Grimoire.all 
  end

  def new
    @grimoires = Grimoire.new
  end 
    
  def create 
    @grimoire = Grimoire.create(grimoires_params)
      if @grimoire.valid?
        redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def grimoires_params
    params.require(:grimoire).permit(:name, :address, :description)
  end
end
