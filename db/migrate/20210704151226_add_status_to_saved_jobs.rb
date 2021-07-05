class AddStatusToSavedJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :saved_jobs, :status, :string
  end
end
