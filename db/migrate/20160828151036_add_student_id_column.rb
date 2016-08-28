class AddStudentIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :education, :student_id, :integer
  end
end
