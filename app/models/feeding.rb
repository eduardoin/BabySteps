class Feeding < Episode
  episode_attr :food_name
  validates :food_name, presence: true
end
