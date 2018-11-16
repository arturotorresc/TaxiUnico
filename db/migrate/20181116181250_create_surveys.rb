class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.integer :client_rating
      t.integer :driver_rating
      t.text :comments
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
