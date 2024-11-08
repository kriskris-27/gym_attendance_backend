class Attendance < ApplicationRecord
  belongs_to :member
  belongs_to :session
end
