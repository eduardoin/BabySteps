class Measurement < ApplicationRecord
  belongs_to :kid

  validates :type, :measured_at, :value, presence: true
  validates :value, numericality: true
end
