class KidPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:tutelages).where("tutelages.user_id = ?", user.id)
    end
  end

  def index?
    record.users.include?(user)
  end

  def new?
    user
  end

  def tracking?
    record.users.include?(user)
  end

  def full_log?
    record.users.include?(user)
  end

  def chart?
    record.users.include?(user)
  end
end
