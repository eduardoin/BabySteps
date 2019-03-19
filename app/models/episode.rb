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

  def name
    type.underscore.humanize.titlecase
  end

  def description
    'Default description'
  end
end
