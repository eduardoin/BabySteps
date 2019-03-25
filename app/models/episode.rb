class Episode < ApplicationRecord
  AVAILABLE_TYPES = ['DiaperChanging', 'Feeding', 'Crying', 'Medication', 'Fever', 'Vomiting', 'Bruise', 'Other']

  belongs_to :kid
  validates :tracked_at, presence: true

  default_scope { order('tracked_at DESC') }

  def self.permitted_params
    @permitted_params
  end

  def self.new_from_types
    AVAILABLE_TYPES.map { |type| new(type: type) }
  end

  extend DataAttribute

  def title
    type.underscore.humanize.titlecase
  end

  def description(title)
    if title == "Diaper Changing"
      'Track everytime the changes the diaper.'
    elsif title == "Feeding"
      'Track all baby bottles, fruits, snacks and meals.'
    elsif title == "Crying"
      'Crying intensity is as important as frequency.'
    elsif title == "Medication"
      "Don't forget to add the amout."
    elsif title == "Fever"
      "Temperature and frequency are keys for kids."
    elsif title == "Vomiting"
      "Try to describe the incident with details."
    elsif title == "Bruise"
      "Try to describe the incident with details."
    else
      "You can log here any other kind of incident."
    end
  end

  def present_log
    last_key = data.keys.last
    data.map do |key, value|
      if key == "temperature"
        list_tag { "#{value} °C#{',' unless last_key == key}" }
      else
        list_tag { "#{value}#{',' unless last_key == key}" }
      end
    end.join.html_safe
  end

  private

  def list_tag
    <<-HTML
      <li class="log_card-subtitle" style="display: inline;">#{yield}</li>
    HTML
  end
end
