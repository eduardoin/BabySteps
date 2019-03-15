class Episode < ApplicationRecord
  belongs_to :kid
  validates :tracked_at, :data, presence: true

  def self.permitted_params
    @permitted_params
  end

  extend DataAttribute
end
