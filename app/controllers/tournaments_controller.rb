class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :delete]

  def index
    @tournaments = Tournament.order(:date)
    @registrations = Registration.joins(:tournament).joins(:player).order(:tournament_id)

  end

  def show
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    date = tournament_params["date"].split('/')
    preformatted_date = [date[2], date[0], date[1]].join('/')
    formatted_date = Date.parse(preformatted_date).strftime("%A %m %B %Y")
    @tournament.date = formatted_date

    @tournament.save
    redirect_to tournaments_path
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
    params.require(:tournament).permit(:city, :date, :tableau, :serie, :price1, :price2, :price3)
  end
end
