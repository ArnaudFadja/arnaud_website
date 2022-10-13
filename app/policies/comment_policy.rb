class CommentPolicy < ResourcePolicy

  def create?
    true
  end

  def destroy?
    user.has_any_role? :admin, :protagonist or user.owner_of?(@record)
  end
end
