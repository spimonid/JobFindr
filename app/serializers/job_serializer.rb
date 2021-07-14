class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :role, :remote, :technologies, :full_description, :link, :logo
  belongs_to :company
end
