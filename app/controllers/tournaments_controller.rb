class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def tournament_params
    params.require(:tournament).permit(:city, :date, :tableau, :serie, :price1, :price2, :price3, :club)
  end
end
