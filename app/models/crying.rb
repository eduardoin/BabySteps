class Crying < Episode
  LEVELS = ['Whimpering/Whining', 'Continuous Crying', 'Hysterical Crying']

  episode_attr :level
  validates :level, presence: true, inclusion: { in: LEVELS }
end
