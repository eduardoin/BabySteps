class Fever < Episode
  episode_attr :temperature, :note
  validates :temperature, presence: true, numericality: true
end
