class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :delete]

  def index
    @tournaments_september = Tournament.where(date: Date.new(2016, 9, 1)...Date.new(2016, 10, 1)).order(:date)
    @september = { name: "Septembre 2016", array: @tournaments_september}
    @tournaments_october = Tournament.where(date: Date.new(2016, 10, 1)...Date.new(2016, 11, 1)).order(:date)
    @october = { name: "Octobre 2016", array: @tournaments_october}
    @tournaments_november = Tournament.where(date: Date.new(2016, 11, 1)...Date.new(2016, 12, 1)).order(:date)
    @november ={ name: "Novembre 2016", array: @tournaments_november}
    @tournaments_december = Tournament.where(date: Date.new(2016, 12, 1)...Date.new(2017, 1, 1)).order(:date)
    @december = { name: "Décembre 2016", array: @tournaments_december}
    @tournaments_january = Tournament.where(date: Date.new(2017, 1, 1)...Date.new(2017, 2, 1)).order(:date)
    @january = { name: "Janvier 2017", array: @tournaments_january}
    @tournaments_february = Tournament.where(date: Date.new(2017, 2, 1)...Date.new(2017, 3, 1)).order(:date)
    @february = { name: "Février 2017", array: @tournaments_february}
    @tournaments_march = Tournament.where(date: Date.new(2017, 3, 1)...Date.new(2017, 4, 1)).order(:date)
    @march = { name: "Mars 2017", array: @tournaments_march}
    @tournaments_april = Tournament.where(date: Date.new(2017, 4, 1)...Date.new(2017, 5, 1)).order(:date)
    @april = { name: "Avril 2017", array: @tournaments_april}
    @tournaments_may = Tournament.where(date: Date.new(2017, 5, 1)...Date.new(2017, 6, 1)).order(:date)
    @may = { name: "Mai 2017", array: @tournaments_may}
    @tournaments_june = Tournament.where(date: Date.new(2017, 6, 1)...Date.new(2017, 7, 1)).order(:date)
    @june = { name: "Juin 2017", array: @tournaments_june}
    @tournaments_july = Tournament.where(date: Date.new(2017, 7, 1)...Date.new(2017, 8, 1)).order(:date)
    @july = { name: "Juillet 2017", array: @tournaments_july}
    @tournaments = [@september, @october, @november, @december, @january, @february, @march, @april, @may, @june, @july]
    @registrations_by_tournaments = Registration.joins(:tournament).
                                  joins(:player).
                                  where(:tournament_id => params["id"])
                                # raise
  end

  def show
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)
    date = Date.parse(tournament_params["date"])
    @tournament.date = date
    city = tournament_params["city"].capitalize
    @tournament.city = city
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
