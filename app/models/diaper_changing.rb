class DiaperChanging < Episode
  episode_attr :rash, :pee, :poop, :diarrhea, :blood
  boolean_attr :rash, :pee, :poop, :diarrhea, :blood
end
