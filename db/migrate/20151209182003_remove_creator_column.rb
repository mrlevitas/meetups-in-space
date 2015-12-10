class RemoveCreatorColumn < ActiveRecord::Migration
  def up
    remove_column :meetups, :creator
  end
  def down
    add_column :meetups, :creator, :string
  end
end
