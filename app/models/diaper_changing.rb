class DiaperChanging < Episode
  episode_attr :rash, :pee, :poop, :diarrhea, :blood
  boolean_attr :rash, :pee, :poop, :diarrhea, :blood

  def present_log
    present_data.map do |key, _|
      list_tag do
        "#{first_present_key == key ? key.capitalize : key}#{',' unless last_present_key == key}"
      end
    end.join.html_safe
  end

  private

  def present_data
    data.select { |_, value| value == '1' }
  end

  def first_present_key
    present_data.keys.first
  end

  def last_present_key
    present_data.keys.last
  end
end
