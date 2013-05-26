class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :show, :all

    elsif user.role == "admin"
      can :add, :all
    end
  end
end
