class UserPolicy < ApplicationPolicy

  def index?
    false
  end

  def new?
    create?
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope < Scope
    def resolve
      if user.full_access?
        scope.all
      else
        scope.with_restricted_access
      end
    end
  end
end
