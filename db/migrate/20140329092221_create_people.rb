class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :realname
      t.datetime :birthday
      t.boolean :gender

      t.timestamps
    end
  end
end
