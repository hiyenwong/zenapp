class CreateBloodPressures < ActiveRecord::Migration
  def change
    create_table :blood_pressures do |t|
      t.integer :person_id
      t.integer :pssy
      t.integer :pdias
      t.decimal :map
      t.decimal :ppluse

      t.timestamps
    end
  end
end
