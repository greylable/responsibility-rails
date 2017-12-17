class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :goal
      t.datetime :deadline

      t.timestamps
    end
  end
end
