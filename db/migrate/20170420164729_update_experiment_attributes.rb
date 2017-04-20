class UpdateExperimentAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :experiments, :abstract, :text
    add_column :experiments, :introduction, :text
    add_column :experiments, :methods, :text
    add_column :experiments, :conclusion, :text
  end
end
