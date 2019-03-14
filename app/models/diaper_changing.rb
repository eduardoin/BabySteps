class DiaperChanging < Episode
  episode_attr :rash, :pee, :poop, :diarrhea, :blood, :note
  boolean_attr :rash, :pee, :poop, :diarrhea, :blood
end
