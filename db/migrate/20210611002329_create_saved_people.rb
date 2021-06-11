class CreateSavedPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_people do |t|
      t.integer :user_id
      t.integer :person_id
      t.integer :company_id

      t.timestamps
    end
  end
end
