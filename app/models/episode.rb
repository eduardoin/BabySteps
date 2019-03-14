class Episode < ApplicationRecord
  belongs_to :kid
  validates :tracked_at, :data, presence: true

  self.abstract_class = true

  extend DataAttribute
end
