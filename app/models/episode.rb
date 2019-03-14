class Episode < ApplicationRecord
  belongs_to :kid
  validates :tracked_at, :data, presence: true

  extend DataAttribute
end
