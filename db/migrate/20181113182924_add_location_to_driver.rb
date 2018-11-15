class AddLocationToDriver < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :location, :string
  end
end
