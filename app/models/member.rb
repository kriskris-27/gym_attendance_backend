class Member < ApplicationRecord
  has_many :attendances, dependent: :destroy
  has_many :sessions, through: :attendances
end
