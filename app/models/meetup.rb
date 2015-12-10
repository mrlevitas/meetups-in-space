class Meetup < ActiveRecord::Base
  # has_and_belongs_to_many :users
  has_many :meetup_users
  has_many :users, through: :meetup_users
  validates :name, uniqueness: true
end
