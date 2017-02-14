class API::V1::HeroesController < ApplicationController

  def index
    @heroes = Hero.all
  end

  def show
    @hero = Hero.find_by(id: params[:id])
  end

  def create
    @hero = Hero.create(name: params[:name],
      power: params[:power],
      bad_guy: params[:bad_guy]
      )
    render "show.json.jbuilder"
  end

end
