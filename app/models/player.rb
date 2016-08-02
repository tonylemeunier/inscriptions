class Player < ActiveRecord::Base
  has_many :registrations

  def self.name_with_credit
    @players = self.order(:last_name).pluck(:last_name, :first_name, :credit, :id)
    @all_players = []
    @players.each do |player|
      @all_players << [player.first(3).join(" "), player.last]
    end
    @all_players
  end
end
