# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin
      can :manage, :Journeyman
    else
      can :manage, Reservation, user_id: user.id
      can :read, Journeyman
    end
  end
end
