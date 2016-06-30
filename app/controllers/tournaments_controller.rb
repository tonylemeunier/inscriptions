class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :delete]

  def index
    @tournaments = Tournament.all
  end

  def show
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
    @tournament.update(tournament_params)
    redirect_to tournament_path(@tournament)
  end

  def delete
    @tournament.destroy
    redirect_to tournaments_path
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end

  def tournament_params
    params.require(:tournament).permit(:city, :date, :tableau, :serie, :price1, :price2, :price3, :club)
  end
end