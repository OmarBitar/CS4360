class Role < ApplicationRecord
  include Filter

  has_and_belongs_to_many :employees, optional: true
  has_many :shifts, dependent: :nullify

  validates :name, uniqueness: {scope: :user_id}, presence: true


end
