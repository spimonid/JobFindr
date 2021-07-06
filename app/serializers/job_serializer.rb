class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :role, :remote, :technologies
  belongs_to :company
end
