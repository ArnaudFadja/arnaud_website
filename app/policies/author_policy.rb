class AuthorPolicy < ResourcePolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
