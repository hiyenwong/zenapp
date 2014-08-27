class Removecolumnfrombp < ActiveRecord::Migration
  def change
    remove_column :blood_pressures, :map, :ppulse
  end
end
