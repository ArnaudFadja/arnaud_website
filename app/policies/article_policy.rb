class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.has_any_role? :admin, :protagonist
  end

  def update?
    user.has_any_role? :admin, :protagonist
  end

  def destroy?
    user.has_role? :admin
  end

  def addAuthor?
    user.has_any_role? :admin, :protagonist
  end

  def removeAuthor?
    user.has_any_role? :admin, :protagonist
  end

end
