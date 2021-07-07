class Job < ApplicationRecord
  validates :guid, uniqueness: true
  belongs_to :company
end
