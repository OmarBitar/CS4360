class Employee < ApplicationRecord
  has_and_belongs_to_many :roles, :optional => true

  validates :first_name, :last_name, presence: true, length: { maximum: 15 }
end
