class CreateDtpics < ActiveRecord::Migration
  def change
    create_table :dtpics do |t|
      t.date :join

      t.timestamps
    end
  end
end
