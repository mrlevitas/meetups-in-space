# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
#
# provider, null: false
# table.string :uid, null: false
# table.string :username, null: false
# table.string :email, null: false
# table.string :avatar_url
# 1 | github   | 1631401 | Roman Levitas | mrlevitas@gmail.com | https://avatars.githubusercontent.com/u/1631401?v=3
  seb = User.create({provider: "github", uid: "1631402", username: "Sebastian", email: "example@gmail.com", avatar_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/100px-Ruby_logo.svg.png"} )
  brian = User.create({provider: "github", uid: "1631403", username: "Brian", email: "example2@gmail.com", avatar_url: "http://globe-views.com/dcim/dreams/emerald/emerald-02.jpg"} )
  b2 = Meetup.create({name: 'b2', description: 'the best meetup', location: 'my house'})
  a1 = Meetup.create({name: 'a1', description: 'the best meetup', location: 'my house'})
  d4 = Meetup.create({name: 'd4', description: 'the best meetup', location: 'yo mammas house'})
  c3 = Meetup.create({name: 'c3', description: 'the best meetup', location: 'under a bridge'})

  MeetupUser.create({meetup: a1, user: seb, creator: true})
  MeetupUser.create({meetup: a1, user: brian})
  MeetupUser.create({meetup: b2, user: brian, creator: true})
  MeetupUser.create({meetup: c3, user: brian, creator: true})
  MeetupUser.create({meetup: d4, user: seb, creator: true})
