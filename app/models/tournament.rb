class Tournament < ActiveRecord::Base
  has_many :registrations

  def self.beautiful_date
    Date.parse(self.date).strftime("%A %m %B %Y")
  end
end
