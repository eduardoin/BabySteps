class EpisodePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(kid: :tutelages).where("tutelages.user_id = ?", user.id)
    end
  end
end
