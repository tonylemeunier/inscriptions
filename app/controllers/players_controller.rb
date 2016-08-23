class PlayersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_player, only: [:show, :edit, :update, :delete]

  def index
    @players = Player.order(:last_name)
  end

  def show
  end

  def new
    @players = Player.order(:last_name)
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save
    transaction = Transaction.new
    transaction.player_id = @player.id.to_i
    transaction.amount = @player.credit
    transaction.reason = "(CREDIT) Enregistrement joueur"
    transaction.save
    redirect_to new_player_path
  end

  def edit
  end

  def update
    credit = @player.credit
    credit_sup = params["credit_sup"].to_i
    new_credit = credit + credit_sup
    @player.update(:credit => new_credit)

    transaction = Transaction.new
    transaction.player_id = @player.id.to_i
    transaction.amount = params["credit_sup"].to_i
    transaction.reason = params["reason"]
    transaction.save

    redirect_to new_player_path
  end

  def delete
    @player.destroy
    redirect_to players_path
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:first_name, :last_name, :licence, :credit)
  end
end
