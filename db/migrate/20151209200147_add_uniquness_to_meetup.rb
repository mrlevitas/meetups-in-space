class AddUniqunessToMeetup < ActiveRecord::Migration
  def up
   add_index :meetups, [:name], unique: true
 end
 def down
   remove_index :meetups, [:name]
 end
end
