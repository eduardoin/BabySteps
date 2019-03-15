class Bruise < Episode
  episode_attr :body_part, :incident
  validates :body_part, presence: true
  validates :incident, presence: true
end
