class Bruise < Episode
  episode_attr :body_part, :incident
  validates :body_part, presence: true
  validates :incident, presence: true

  def present_log
    last_key = data.keys.first
    data.to_a.reverse.to_h.map do |key, value|
      list_tag { "#{value}#{',' unless last_key == key}" }
    end.join.html_safe
  end
end
