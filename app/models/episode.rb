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

  def description
    'Default description'
  end

  def present_log
    last_key = data.keys.last
    data.map do |key, value|
      list_tag { "#{value}#{',' unless last_key == key}" }
    end.join.html_safe
  end

  private

  def list_tag
    <<-HTML
      <li class="log_card-subtitle" style="display: inline;">#{yield}</li>
    HTML
  end
end
