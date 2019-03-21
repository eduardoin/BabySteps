class KidPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:tutelages).where("tutelages.user_id = ?", user.id)
    end
  end

  def tracking?
    record.users.include?(user)
  end

end
