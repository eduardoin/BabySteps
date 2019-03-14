class Feeding < Episode
  episode_attr :food_name, :note
  validates :food_name, presence: true
end
