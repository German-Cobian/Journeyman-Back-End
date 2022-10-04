class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :journeyman
  validates :start_date, presence: true
  validate :valid_date
  validates :days_number, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }

  private

  def valid_date
    errors.add(:start_date, "must be at least #{Date.today + 1}") unless start_date >= Date.today + 1
  end
end
