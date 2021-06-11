class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :company_id
      t.string :role

      t.timestamps
    end
  end
end
