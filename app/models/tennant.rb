class Tennant < ApplicationRecord
  has_many :properties, dependent: :destroy
end
