class Addcolumtobloodpressures < ActiveRecord::Migration
  def change
    rename_column :blood_pressures, :ppluse , :ppulse
  end
end
