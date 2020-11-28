class Shift < ApplicationRecord
  include Filter

  belongs_to :user
  belongs_to :employee
  belongs_to :role
end
