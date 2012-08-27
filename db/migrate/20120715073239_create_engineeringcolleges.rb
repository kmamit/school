class CreateEngineeringcolleges < ActiveRecord::Migration
  def change
    create_table :engineeringcolleges do |t|
      t.string :application_number
      t.string :insti_state
      t.string :insti_region
      t.text :institute_name
      t.string :name_of_course
      t.string :level_of_course
      t.integer :approved_intake

      t.timestamps
    end
  end
end
