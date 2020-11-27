class Employee < ApplicationRecord
  include Filter

  has_and_belongs_to_many :roles, optional: true
  has_many :shifts, dependent: :nullify

  validates :first_name, :last_name, presence: true
end
