class ProtagonistPolicy < ResourcePolicy
  def create?
    user.has_role? :admin
  end
end
