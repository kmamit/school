class CreateStudentphotos < ActiveRecord::Migration
  def change
    create_table :studentphotos do |t|
      t.integer :student_id

      t.timestamps
    end
  end
end
