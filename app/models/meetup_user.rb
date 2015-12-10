class MeetupUser < ActiveRecord::Base
  # has_and_belongs_to_many :users
  belongs_to :meetup
  belongs_to :user
  validates :meetup_id, presence: true
  validates :user_id, presence: true, uniqueness: {scope: :meetup_id}
end

# create_table "meetup_users", force: :cascade do |t|
#   t.integer  "meetup_id",                  null: false
#   t.integer  "user_id",                    null: false
#   t.boolean  "creator",    default: false, null: false
