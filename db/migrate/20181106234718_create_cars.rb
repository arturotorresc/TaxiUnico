class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :license_plate
      t.string :brand
      t.string :color
      t.references :driver, foreign_key: true

      t.timestamps
    end
  end
end
