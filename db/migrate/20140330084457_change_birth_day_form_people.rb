class ChangeBirthDayFormPeople < ActiveRecord::Migration
  def change
  	change_table :people do |t|
  		t.change :birthday, :date
  	end
  end
end
