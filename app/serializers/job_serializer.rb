class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :role, :remote, :technologies, :full_description
  belongs_to :company
end
