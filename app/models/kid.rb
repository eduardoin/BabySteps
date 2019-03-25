class Kid < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  GENDERS = ['Male', 'Female']

  has_many :episodes, dependent: :destroy
  has_many :measurements, dependent: :destroy
  has_many :tutelages, dependent: :destroy
  has_many :users, through: :tutelages

  validates :name, :gender, :born_at, presence: true
  validates :gender, inclusion: { in: GENDERS }
  validates :token, presence: true
  validates :token, uniqueness: true

  after_create :set_admin_on_create
  before_validation :generate_token, on: :create

  def generate_token
    self.token = SecureRandom.urlsafe_base64(64, false)
  end

  private

  def set_admin_on_create
    tutelages.first.update(admin: true)
  end
end
