class ArticlePolicy < ResourcePolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end



  def addAuthor?
    user.has_any_role? :admin, :protagonist
  end

  def removeAuthor?
    user.has_any_role? :admin, :protagonist
  end

end
