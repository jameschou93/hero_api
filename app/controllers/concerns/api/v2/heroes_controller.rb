class Api::V2::HeroesController < ApplicationController

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

  def edit
    
  end

  def update
    hero = Hero.find_by(id: params[:id])
    hero.update(name: params[:name],
                power: params[:power],
                bad_guy: params[:bad_guy]
      )

  end

  def destroy
     hero = Hero.find_by(id: params[:id])
     hero.delete
    
  end
end

