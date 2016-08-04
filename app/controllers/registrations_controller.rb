class RegistrationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @tournament = Tournament.where(id: params["tournament_id"]).first
    @all_players = Player.name_with_credit
    @registration = Registration.new


  end

  def create
    @registration = Registration.new(registration_params)
    player = Player.find(registration_params["player_id"].to_i)
    if player.credit < registration_params["price"].to_i
      redirect_to '/credit-insuffisant'
    else
      new_credit = player.credit - registration_params["price"].to_i
      player.credit = new_credit
      player.save
      @registration.save
      redirect_to tournaments_path
    end
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
    params.require(:registration).permit(:tournament_id, :player_id, :tableau1, :serie1, :tableau2, :serie2, :tableau3, :serie3, :price, :com1, :com2, :com3)
  end
end

