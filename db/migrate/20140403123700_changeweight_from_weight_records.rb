class ChangeweightFromWeightRecords < ActiveRecord::Migration
  def change
  	change_table :weight_records do |t|
  		t.change :weight, :decimal
  	end
  end
end
