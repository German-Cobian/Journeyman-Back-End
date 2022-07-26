class Journeyman < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :skill, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true

end
