class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def search
    @superheros = Superhero.all
    if params[:superhero].present?
      @superhero = Superhero.search_hero(params[:superhero])
      if @superhero
        render 'superheros/index'
      else
        flash[:alert] = 'We could not find this superhero'
        redirect_to superheros_path
      end
    else
      flash[:alert] = 'You must enter something'
      redirect_to superheros_path
    end
  end

  def create
    @superhero = Superhero.create!(name: params[:name], intelligence: params[:intelligence])
    redirect_to superheros_path
  end
end
