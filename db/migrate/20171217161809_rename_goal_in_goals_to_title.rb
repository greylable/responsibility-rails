class RenameGoalInGoalsToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :goals, :goal, :title
  end
end
