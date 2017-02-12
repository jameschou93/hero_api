class HeroesController < ApplicationController

  def index
    @heroes = Hero.all
  end

  def show
    @hero = Hero.find_by(id: params[:id])
  end
end
