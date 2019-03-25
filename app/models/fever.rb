class Fever < Episode
  episode_attr :temperature
  validates :temperature, presence: true, numericality: true

  def present_log
    last_key = data.keys.last
    data.map do |key, value|
      list_tag { "#{value} °C#{',' unless last_key == key}" }
    end.join.html_safe
  end
end
