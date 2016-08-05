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
    tournament = Tournament.find(registration_params["tournament_id"].to_i)

    tableau1 = registration_params["tableau1"]
    serie1 = registration_params["serie1"]
    tableau2 = registration_params["tableau2"]
    serie2 = registration_params["serie2"]
    tableau3 = registration_params["tableau3"]
    serie3 = registration_params["serie3"]

    if tableau2 == nil || tableau2 == ""
      @registration.price = tournament.price1
    elsif tableau3 == nil || tableau3 == ""
      @registration.price = tournament.price2
    else
      @registration.price = tournament.price3
    end


    if player.credit < @registration.price
      redirect_to '/credit-insuffisant'
    else
      new_credit = player.credit - @registration.price
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
    params.require(:registration).permit(:tournament_id, :player_id, :tableau1, :serie1, :tableau2, :serie2, :tableau3, :serie3, :com1, :com2, :com3)
  end
end

