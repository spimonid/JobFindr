class Company < ApplicationRecord
  validates :name, uniqueness: true
  has_many :people
  has_many :jobs
end
