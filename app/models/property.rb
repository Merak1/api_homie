class Property < ApplicationRecord
  belongs_to :tennant
  enum status: { published: 0, available: 1, deleted: 2 }
end
