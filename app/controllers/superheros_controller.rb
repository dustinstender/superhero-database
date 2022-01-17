class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def create
  end
end
