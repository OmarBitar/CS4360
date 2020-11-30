class Shift < ApplicationRecord
  include Filter

  belongs_to :user
  belongs_to :employee
  belongs_to :role

  validates :date,:start,:end,:role_id, presence: true
  validates :date, numericality: {only_integer: true}
  validates :employee_id, :presence => true
end
