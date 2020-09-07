class Shift < ApplicationRecord
  validates :start_time, :out_time, presence: true
  belongs_to :user
end
