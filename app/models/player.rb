class Player < ActiveRecord::Base
  has_many :registrations
  has_many :transactions
  validates :licence, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true

  def self.name_with_credit
    @players = self.order(:last_name).pluck(:last_name, :first_name, :credit, :id)
    @all_players = []
    @players.each do |player|
      @all_players << [player.first(3).join(" "), player.last]
    end
    @all_players
  end
end
