class Task < ApplicationRecord
  has_many :labelings, dependent: :destroy
  has_many :labels, through: :labelings
end
