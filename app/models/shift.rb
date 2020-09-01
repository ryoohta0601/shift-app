class Shift < ApplicationRecord
  validates :date, :start_time, :end_time, presence: true
  belongs_to :user
end
