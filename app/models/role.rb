class Role < ApplicationRecord
  include Filter

  has_and_belongs_to_many :employees, optional: true
  has_many :shifts, dependent: :destroy

  validates :name, uniqueness: {scope: :user_id, case_sensitive: false}, presence: true
  validates :priority, numericality: {only_integer: true, greater_than_or_equal_to: 1 }

end
