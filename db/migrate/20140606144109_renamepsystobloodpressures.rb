class Renamepsystobloodpressures < ActiveRecord::Migration
  def change
    rename_column :blood_pressures, :pssy, :psys
  end
end
