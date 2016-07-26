class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all
  end

  def show
  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.save
    redirect_to registrations_path
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
    params.require(:registration).permit(:tableau1, :serie1, :tableau2, :serie2, :tableau3, :serie3, :price)
  end
end

t.integer  "player_id"
    t.integer  "tournament_id"
    t.string   "tableau1"
    t.string   "serie1"
    t.string   "tableau2"
    t.string   "serie2"
    t.string   "tableau3"
    t.string   "serie3"
    t.integer  "price"
