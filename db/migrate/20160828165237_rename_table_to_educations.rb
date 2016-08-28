class RenameTableToEducations < ActiveRecord::Migration[5.0]
  def change
    rename_table :education, :educations
  end
end
