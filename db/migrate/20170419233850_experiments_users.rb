class ExperimentsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments_users do |t|
      t.integer :staffed_experiment_id
      t.integer :staff_member_id
      t.timestamps null: false
    end
  end
end
