class ConvertStatusToInt < ActiveRecord::Migration[5.2]
  def up
      change_column :trips, :status, :integer, default: 0
    end

    def down
      change_column :trips, :status, :string
    end
end
