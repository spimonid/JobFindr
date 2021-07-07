class AddPublishedDateToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :published_date, :string
  end
end
