class Role < ApplicationRecord
  validates :name, :priority, presence: true
  validates :priority, :numericality => {:greater_than => 0}


end
