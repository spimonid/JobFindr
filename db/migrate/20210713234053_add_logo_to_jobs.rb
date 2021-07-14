class AddLogoToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :logo, :string
  end
end
