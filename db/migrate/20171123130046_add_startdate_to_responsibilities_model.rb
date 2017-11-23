class AddStartdateToResponsibilitiesModel < ActiveRecord::Migration[5.0]
  def change
    add_column :responsibilities, :start_date, :datetime
  end
end
