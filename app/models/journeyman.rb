class Journeyman < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_one_attached :journeyman_pic

  validates :name, presence: true
  validates :skill, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(journeyman_pic) if journeyman_pic.attached?
  end

end
