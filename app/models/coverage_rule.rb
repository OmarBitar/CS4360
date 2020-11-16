class CoverageRule < ApplicationRecord
  belongs_to :user

  include Filter
end
