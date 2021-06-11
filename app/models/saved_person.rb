class SavedPerson < ApplicationRecord
  belongs_to :user
  belongs_to :person
  belongs_to :company
end
