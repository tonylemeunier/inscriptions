class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all
  end

  def show
  end

  def new
    @tournament = Tournament.where(id: params["tournament_id"]).first
    @players = Player.order(:last_name).pluck(:first_name, :last_name, :credit, :id)
    @all_players = []
    @players.each do |player|
      @all_players << [player.first(3).join(" "), player.last]
    end
    @registration = Registration.new


  end

  def create
    @registration = Registration.new(registration_params)
    @registration.save
    redirect_to tournament_registrations_path
  end

  def edit
  end

  def update
  end

  def delete
    @registration.destroy
    redirect_to registrations_path
  end

  private

  def set_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:tournament_id, :player_id, :tableau1, :serie1, :tableau2, :serie2, :tableau3, :serie3, :price)
  end
end

