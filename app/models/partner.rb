class Partner < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true

  validates :name, format: { without: /\s/ }
  validates :token, format: { without: /\s/ }
end
