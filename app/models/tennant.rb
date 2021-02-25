class Tennant < ApplicationRecord
  has_many :properties, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :availability, presence: true
end
