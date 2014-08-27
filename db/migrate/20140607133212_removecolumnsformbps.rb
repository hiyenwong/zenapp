class Removecolumnsformbps < ActiveRecord::Migration
  def change
    remove_column :blood_pressures, :map
    remove_column :blood_pressures, :ppulse
  end
end
