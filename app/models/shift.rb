class Shift < ApplicationRecord
  validates :start_time, :end_time, presence: true
  belongs_to :user
end
