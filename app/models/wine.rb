class Wine < ActiveRecord::Base
  
  VARIETALS = [
    'Barbera',
    'Cabernet Sauvignon',
    'Chardonnay',
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
    'Verdejo',
    'Viognier',
    'Zinfandel'
  ]

  validates :name, :year, :country, presence: true
  validates :varietal, inclusion: { in: VARIETALS, message: "%{value} is not a valid varietal" }

end
