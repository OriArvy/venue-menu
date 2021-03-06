class VenuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    return true
  end

  def destroy?
    record.user == user
  end
end
