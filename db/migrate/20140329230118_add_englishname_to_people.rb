class AddEnglishnameToPeople < ActiveRecord::Migration
  def change
  	add_column :people,:englishname,:string
  	rename_column :people,:realname,:chinesename
  end
end