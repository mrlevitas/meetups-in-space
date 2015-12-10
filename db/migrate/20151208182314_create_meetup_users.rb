class CreateMeetupUsers < ActiveRecord::Migration
  def change
    create_table :meetup_users do |table|
      table.integer :meetup_id, null: false
      table.integer :user_id, null: false
      table.boolean :creator, null: false, default: false
      table.timestamps null: false
    end
  end
end
