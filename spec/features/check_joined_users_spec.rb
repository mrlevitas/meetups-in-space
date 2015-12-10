# As a user
# I want to see who has already joined a meetup
# So that I can see if any of my friends have joined
require 'spec_helper'

feature "see who has joined meetup" do
  scenario "meetup page displays users who have joined meetup" do

    # creator = FactoryGirl.create(:user)
    user = FactoryGirl.create(:user)
    three_users = FactoryGirl.create_list(:user, 3)
    meetup1 = FactoryGirl.create(:meetup)
    # binding.pry
    meet_user0 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: user, creator: true)
    meet_user1 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[0])
    meet_user2 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[1])
    meet_user3 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[2])
    # binding.pry
    visit '/'
    sign_in_as user
    visit "/meetups/#{meetup1.id}"

# binding.pry

    expect(page).to have_content "#{three_users[0].username}"
    expect(page).to have_content "#{three_users[1].username}"
    expect(page).to have_content "#{three_users[2].username}"
    end
end
