class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :origin
      t.text :destiny
      t.datetime :datetime
      t.references :driver, foreign_key: true
      t.references :client, foreign_key: true
      t.decimal :rate
      t.time :duration

      t.timestamps
    end
  end
end
