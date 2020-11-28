class Shift < ApplicationRecord
  include Filter

  belongs_to :user
  belongs_to :employee
  belongs_to :role

  validates_presence_of :start, :end, :employee_id, :role_id
end
