class Appjan < ApplicationRecord
  validates :date,{uniqueness: true}
  validates :start_time,{presence: true}
  validates :end_time,{presence: true}
end
