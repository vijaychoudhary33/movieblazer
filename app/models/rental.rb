class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :billings
end
