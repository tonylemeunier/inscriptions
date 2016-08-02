TABLEAUX = ["SH", "SD", "DH", "DD", "DMx" ]

class Registration < ActiveRecord::Base
  belongs_to :player
  belongs_to :tournament
end
