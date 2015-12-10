require 'factory_girl'

FactoryGirl.define do
  factory :user do
    provider "github"
    sequence(:uid) { |n| n }
    sequence(:username) { |n| "jarlax#{n}" }
    sequence(:email) { |n| "jarlax#{n}@launchacademy.com" }
    avatar_url "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
  end

  factory :meetup do
    sequence(:name) { |n| "Boston Meetup #{n}" }
    description "a meetup in boston"
    location "boston"
  end

  factory :meetup_user do
    meetup
    user
    creator false
  end
end
#
# t.string   "name",        null: false
# t.string   "description", null: false
# t.string   "location",    null: false
# t.string   "creator",     null: false


#
# t.integer  "meetup_id",                  null: false
# t.integer  "user_id",                    null: false
# t.boolean  "creator",    default: false, null: false
