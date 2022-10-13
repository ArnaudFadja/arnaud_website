class ResourcePolicy < ApplicationPolicy
  
  def create?
    user.has_any_role? :admin, :protagonist
  end

  def update?
    user.has_any_role? :admin, :protagonist
  end

  def destroy?
    user.has_role? :admin
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end