class EmployeesRoles < ApplicationRecord
  belongs_to :role
  belongs_to :employee
end
