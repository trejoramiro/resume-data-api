class ChangeTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :educations, :education
  end
end
