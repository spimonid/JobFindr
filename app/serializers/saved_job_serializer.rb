class SavedJobSerializer < ActiveModel::Serializer
  attributes :id, :status
  belongs_to :job
end
