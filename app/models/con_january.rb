class Con_january < ApplicationRecord
  validates :start_time, presence: true, :unless => :holiday?
  validates :end_time, presence: true, :unless => :holiday?
end
