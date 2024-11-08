class Session < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :members, through: :attendances
  end
  