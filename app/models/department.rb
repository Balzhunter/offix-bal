class Department < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true

  # Asociations
end
