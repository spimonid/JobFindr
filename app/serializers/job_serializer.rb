class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :role
  belongs_to :company
  has_many :saved_jobs
end
