# As a user
# I want to create a meetup
# So that I can gather a group of people to do an activity

require 'spec_helper'

feature "can submit a new meetup" do
  scenario "new meetup form accepts info and creates meetup" do
    # As a user
    # I want to view a list of all available meetups
    # So that I can get together with people with similar interests
    # Acceptance Criteria:

    # creator = FactoryGirl.create(:user)
    user = FactoryGirl.create(:user)
    # meetup1 = FactoryGirl.create(:meetup)
    # meet_user = FactoryGirl.create(:meetup_user , meetup: meetup1, user: user , creator: true)
    # binding.pry
    visit '/'
    sign_in_as user
    visit '/new'
    fill_in "name", with: "Python Meetup"
    fill_in "description", with: "a meetup for python"
    fill_in "location", with: "San Francisco"

    click_button "submit"

# binding.pry

    expect(page).to have_content "Python Meetup"
    expect(page).to have_content "Description: a meetup for python"
    expect(page).to have_content "Location: San Francisco"
  end
end
