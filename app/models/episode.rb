class Episode < ApplicationRecord
  belongs_to :kid
  validates :tracked_at, :data, presence: true

  default_scope { order('tracked_at DESC') }

  def self.permitted_params
    @permitted_params
  end

  extend DataAttribute
end
