class Property < ApplicationRecord
  belongs_to :tennant
  enum status: { published: 0, available: 1, deleted: 2 }

  validates :name, presence: true
  validates :description, presence: true
  validates :rental_price, presence: true
  validates :tennant_id, presence: true
  validates :status, presence: true
end
