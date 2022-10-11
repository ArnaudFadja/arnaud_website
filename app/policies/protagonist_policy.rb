class ProtagonistPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    user.has_role? :admin
  end

  def update?
    user.has_any_role? :admin, :protagonist
  end

  def destroy?
    user.has_role? :admin
  end
end
