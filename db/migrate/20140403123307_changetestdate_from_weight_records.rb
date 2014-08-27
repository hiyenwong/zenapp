class ChangetestdateFromWeightRecords < ActiveRecord::Migration
  def change
  	change_table :weight_records do |t|
  		t.change :test_datetime, :date
  	end
  end
end
