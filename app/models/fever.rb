class Fever < Episode
  episode_attr :temperature
  validates :temperature, presence: true, numericality: true
end
