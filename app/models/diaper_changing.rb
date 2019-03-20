class DiaperChanging < Episode
  episode_attr :rash, :pee, :poop, :diarrhea, :blood
  boolean_attr :rash, :pee, :poop, :diarrhea, :blood

  def present_log
    last_key = data.keys.last
    data.map do |key, value|
      if value == "1"
        <<-HTML
          <li class="log_card-subtitle" style="display: inline;">
            #{key}#{',' unless last_key == key}
          </li>
        HTML
      end
    end.join.html_safe
  end
end
