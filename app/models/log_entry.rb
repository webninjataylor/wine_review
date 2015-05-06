class LogEntry < ActiveRecord::Base
  
  belongs_to :wine

  STARS = 1..5

  validates :name, :rating, :location, :comments, :tasted_on, presence: true
  validates :stars, inclusion: { in: STARS, message: "must be from #{STARS.first} to #{STARS.last}" }

end
