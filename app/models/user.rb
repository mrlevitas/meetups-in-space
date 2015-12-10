class User < ActiveRecord::Base
  #  has_and_belongs_to_many :meetups
  has_many :meetup_users
  has_many :meetups, through: :meetup_users

  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_or_create_by(provider: provider, uid: uid) do |user|
      user.provider = provider
      user.uid = uid
      user.email = auth.info.email
      user.username = auth.info.name
      user.avatar_url = auth.info.image
    end
  end

  validates :provider, presence: true
  validates :uid, presence: true, uniqueness: {scope: :provider}
  validates :username, presence: true
  validates :avatar_url, presence: true
end

# t.string   "provider",   null: false
# t.string   "uid",        null: false
# t.string   "username",   null: false
# t.string   "email",      null: false
# t.string   "avatar_url", null: false
