class ResearchPolicy < ResourcePolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

end