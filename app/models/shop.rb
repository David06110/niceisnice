class Shop < ApplicationRecord
  has_many_attached :photos
  
  has_many :cashbacks
  validates :name, presence: true
  validates :address, presence: true
  validates :active, default: false # actif après validation du format de ticket
  # validates :latitude, presence: true
  # validates :longitude, presence: true
end
