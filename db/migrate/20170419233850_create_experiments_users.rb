class CreateExperimentsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments_users do |t|
      t.integer :user_id
      t.integer :experiment_id
      t.timestamps null: false
    end
  end
end
