class AddDefaultValueToStatusAttribute < ActiveRecord::Migration[5.2]
  	def up
  		change_column :trips, :status, :string, default: 'pending'
	end

	def down
		change_column :trips, :status, :string, default: nil
	end
end
