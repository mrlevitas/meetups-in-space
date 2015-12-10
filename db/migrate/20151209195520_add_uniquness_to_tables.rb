class AddUniqunessToTables < ActiveRecord::Migration
  def up
   add_index :meetup_users, [:meetup_id, :user_id], unique: true
 end
 def down
   remove_index :meetup_users, [:meetup_id, :user_id]
  #  remove_index :meetup_users, :user_id
 end
end
