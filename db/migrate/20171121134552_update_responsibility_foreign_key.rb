class UpdateResponsibilityForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_reference :responsibilities, :users
    add_reference :responsibilities, :user, foreign_key: true
  end
end
