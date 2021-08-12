class Employee < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validate :minimum_age

  # Associations
  belongs_to :department

  private

  def minimum_age
    return if birth_date <= 18.years.ago

    errors.add(:birth_date, "should be before 18 years ago")
  end
end
