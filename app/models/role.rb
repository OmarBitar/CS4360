class Role < ApplicationRecord
  has_and_belongs_to_many :employees, :optional => true

  validates :name, uniqueness: true, presence: true, length: { maximum: 15 }
  validates :priority, :uniqueness => {:scope => :user_id}, presence: true, numericality: { only_integer: true, :greater_than_or_equal_to => 1 }
  include Filter
end
