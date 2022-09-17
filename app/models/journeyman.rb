class Journeyman < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :skill, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true


  # Image_url goes to serializer
  def image_url 
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end

end
