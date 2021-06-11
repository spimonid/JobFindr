class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :role
      t.boolean :remote
      t.string :technologies

      t.timestamps
    end
  end
end
