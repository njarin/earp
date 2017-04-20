class FixStaffNeededInExperiments < ActiveRecord::Migration[5.0]
  def change
    remove_column :experiments, :staff_needed, :integer
    add_column :experiments, :staff_needed, :integer, null: false
  end
end
