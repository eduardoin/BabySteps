class Measurement < ApplicationRecord
  belongs_to :kid

  validates :type, :measured_at, :value, presence: true
  validates :value, numericality: true

  def measurement_suffix
    type == "Height" ? '(cm)' : '(kg)'
  end
end

class Height < Measurement
end

class Weight < Measurement
end
