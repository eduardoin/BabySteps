class Kid < ApplicationRecord
  has_many :episodes, dependent: :destroy
  has_many :measurements, dependent: :destroy
end
