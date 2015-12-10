require 'spec_helper'

feature "meetups displayed on page in order" do
  scenario "meetups display on page" do
    # As a user
    # I want to view a list of all available meetups
    # So that I can get together with people with similar interests
    # Acceptance Criteria:

    # creator = FactoryGirl.create(:user)
    meetup_list = FactoryGirl.create_list(:meetup, 3)
    visit '/'

    meetup_list.each do |meetup|
      expect(page).to have_content "#{meetup.name}"
    end
  end
end
