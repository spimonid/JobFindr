class AddGuidToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :guid, :string
  end
end
