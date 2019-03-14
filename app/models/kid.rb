class Kid < ApplicationRecord
  GENDERS = ['Male', 'Female']

  has_many :episodes, dependent: :destroy
  has_many :measurements, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  has_many :tutelages, dependent: :destroy
  has_many :users, through: :tutelages

  validates :name, :gender, :born_at, presence: true
  validates :gender, inclusion: { in: GENDERS }

  after_create :set_admin_on_create

  private

  def set_admin_on_create
    tutelages.first.update(admin: true)
  end

end
