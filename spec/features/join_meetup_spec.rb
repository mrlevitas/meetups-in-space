# As a user
# I want to join a meetup
# So that I can partake in this meetup

require 'spec_helper'

feature "join existing meetup" do
  scenario "navigate to meetup detail page and join meetup" do

    # creator = FactoryGirl.create(:user)
    user = FactoryGirl.create(:user)
    three_users = FactoryGirl.create_list(:user, 3)
    meetup1 = FactoryGirl.create(:meetup)
    # binding.pry
    # meet_user0 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: user, creator: true)
    meet_user1 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[0], creator: true)
    meet_user2 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[1])
    meet_user3 = FactoryGirl.create(:meetup_user , meetup: meetup1, user: three_users[2])
    # binding.pry
    visit '/'
    sign_in_as user
    visit "/meetups/#{meetup1.id}"
    click_button "JOIN MEETUP"

# binding.pry

    expect(page).to have_content "#{user.username}"

    end
end
