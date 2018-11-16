class AddFullNameColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :admins, :full_name, :string
  	add_column :clients, :full_name, :string
  	add_column :drivers, :full_name, :string
  end
end
