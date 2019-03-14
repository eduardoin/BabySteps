class Crying < Episode
  episode_attr :level, :note
  validates :level, presence: true, inclusion: { in: ['Whimpering/Whining', 'Continuous Crying', 'Hysterical Crying'] }
end
