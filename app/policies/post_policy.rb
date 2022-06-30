class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
  def index?
    true
  end

  def create?
    return true if user.present? && user.role.name == "Admin"
  end

  def destroy?
    return true if user.present? && user.role.name == "Admin"
  end

  private

  def post
    record
  end
end
