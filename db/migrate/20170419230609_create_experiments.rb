class CreateExperiments < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments do |t|
      t.string :title, null: false
      t.text :summary, null: false
      t.text :hypothesis
      t.text :observations
      t.text :results
      t.string :contact_info
      t.integer :staff_needed
      t.integer :owner_id, null: false
      t.timestamps null: false
    end
  end
end
