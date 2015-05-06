class Wine < ActiveRecord::Base
  
  VARIETALS = [
    'Barbera',
    'Cabernet Sauvignon',
    'Chardonnay',
    'Chianti',
    'Gewürztraminer',
    'Grenache',
    'Malbec',
    'Merlot',
    'Nebbiolo',
    'Petite Sirah',
    'Pinot Grigio / Pinot Gris',
    'Pinot Noir',
    'Port',
    'Rhone Blends',
    'Riesling',
    'Sangiovese',
    'Sauvignon Blanc',
    'Syrah / Shiraz',
    'Tempranillo',
    'Touriga Nacional',
    'Verdejo',
    'Viognier',
    'Zinfandel'
  ]

  validates :name, :year, :country, presence: true
  validates :varietal, inclusion: { in: VARIETALS, message: "%{value} is not a valid varietal" }

  has_many :log_entries, dependent: :destroy

  def average_stars
    log_entries.average(:rating)
  end

end
