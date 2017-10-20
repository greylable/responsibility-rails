class CreateResponsibilities < ActiveRecord::Migration[5.0]
  def change
    create_table :responsibilities do |t|
      t.references :users, foreign_key: true
      t.string :name
      t.string :details
      t.string :status
      t.datetime :deadline

      t.timestamps
    end
  end
end
