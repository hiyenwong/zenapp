class CreateWeightRecords < ActiveRecord::Migration
  def change
    create_table :weight_records do |t|
      t.integer :person_id
      t.datetime :test_datetime
      t.integer :weight

      t.timestamps
    end
  end
end
