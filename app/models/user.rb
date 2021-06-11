class User < ApplicationRecord
  has_many :saved_people
  has_many :people, through: :saved_people
  has_many :saved_jobs
  has_many :jobs, through: :saved_jobs

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
