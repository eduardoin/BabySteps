class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tutelages, dependent: :destroy
  has_many :kids, through: :tutelages

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
