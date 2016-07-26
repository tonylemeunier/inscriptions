class Tournament < ActiveRecord::Base
  has_many :registrations
end
