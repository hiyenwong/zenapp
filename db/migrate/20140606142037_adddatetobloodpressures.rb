class Adddatetobloodpressures < ActiveRecord::Migration
  def change
    add_column :blood_pressures, :bp_date, :datetime
  end
end
