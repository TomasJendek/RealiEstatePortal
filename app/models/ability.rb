class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :show, Apartment

    elsif user.role == "admin"
      can :add, Apartment
    end
  end
end
