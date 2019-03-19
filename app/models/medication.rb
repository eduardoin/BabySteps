class Medication < Episode
  episode_attr :name, :amount
  validates :name, presence: true
  validates :amount, presence: true
end
