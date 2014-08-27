class ChangeFromPerson < ActiveRecord::Migration
  def change
  	change_table :people do |t|
  		t.rename :realname,:chinesename
  		t.change :gender,:string ,limit: 1
  		t.add :englishname,:string
  		t.add :alive,:boolean
  	end
  end
end
