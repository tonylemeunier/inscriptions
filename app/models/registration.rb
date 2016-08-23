TABLEAUX = ["SH", "SD", "DH", "DD", "DMx" ]

class Registration < ActiveRecord::Base
  belongs_to :player
  belongs_to :tournament

  validates :player_id, presence: true
  validates :tableau1, presence: true
  validates :serie1, presence: true
end
