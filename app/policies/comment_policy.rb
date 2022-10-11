class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end
  def update?
    user.has_any_role? :admin, :protagonist
  end
  def destroy?
    user.has_any_role? :admin, :protagonist or user.owner_of?(@record)
  end
end
