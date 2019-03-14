class Medication < Episode
  episode_attr :name, :amount, :note
  validates :name, presence: true
  validates :amount, presence: true, numericality: true
end
