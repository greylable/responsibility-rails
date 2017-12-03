class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.text :cause
      t.text :effect
      t.text :feeling

      t.timestamps
    end
  end
end
