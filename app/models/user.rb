class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  

  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?

  has_many :reservations, dependent: :destroy

  validates :username, uniqueness: { case_sensitive: false }

  def set_default_role
    self.role ||= :user
  end
end
