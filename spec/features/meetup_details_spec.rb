# As a user
# I want to view the details of a meetup
# So that I can learn more about its purpose

require 'spec_helper'

feature "meetups should have a details page" do
  scenario "meetup details display on page" do
    # As a user
    # I want to view a list of all available meetups
    # So that I can get together with people with similar interests
    # Acceptance Criteria:

    # creator = FactoryGirl.create(:user)
    user = FactoryGirl.create(:user)
    meetup1 = FactoryGirl.create(:meetup)
    meet_user = FactoryGirl.create(:meetup_user , meetup: meetup1, user: user , creator: true)
    # binding.pry
    visit '/'
    sign_in_as user

# binding.pry

    visit "/meetups/#{meetup1.id}"

    expect(page).to have_content "#{meetup1.name}"
    expect(page).to have_content "Description: #{meetup1.description}"
    expect(page).to have_content "Location: #{meetup1.location}"
  end
end


# creator_id = @meetup.meetup_users.where(creator: true)[0].user_id
#
#
#
# @creator = User.find(creator_id)
