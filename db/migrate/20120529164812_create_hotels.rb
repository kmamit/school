class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :hotel_ref
      t.string :hotel_name
      t.float :package_price
      t.string :folder_name
      t.float :tripadvisor_rating
      t.string :tripadvisor_url
      t.string :hotel_url
      t.string :makemytrip_url
      t.string :cleartrip_url
      t.string :extra_inclusion_1
      t.string :extra_inclusion_2
      t.string :extra_inclusion_3
      t.string :extra_inclusion_4

      t.timestamps
    end
  end
end
