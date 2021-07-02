class JobSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :company
end
