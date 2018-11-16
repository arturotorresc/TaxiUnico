class ChangeDurationToInteger < ActiveRecord::Migration[5.2]
	def up
  		change_column :trips, :duration, :integer, default: 0
	end

	def down
		change_column :trips, :duration, :datetime, default: nil
	end
end