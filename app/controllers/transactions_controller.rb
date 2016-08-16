class TransactionsController < ApplicationController
  def index
    @player = Player.find(params["player_id"])
    @transactions_by_player = Transaction.joins(:player).
                                          where(:player_id => params["player_id"])
# raise
  end
end

