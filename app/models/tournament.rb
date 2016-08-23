class Tournament < ActiveRecord::Base
  has_many :registrations

  validates :city, presence: true
  validates :date, presence: true
  validates :price1, presence: true
  validates :serie, presence: true
  validates :tableau, presence: true
end
