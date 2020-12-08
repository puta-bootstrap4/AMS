class Conjan < ApplicationRecord
  validates :start_time, presence: true,:unless => :holiday?
  validates :end_time,presence: true,:unless => :holiday?
end
