require "spec_helper"

feature "Rsvp'ing for the wedding" do
  scenario "Submit an rsvp that they are coming" do
    visit new_rsvp_path
    fill_in("Names", :with =>"Heather Winner and Mike Gehard")
    choose("will be joining in the fun!")
    choose("attend both")
    click_button("Send RSVP")

    save_and_open_page
    page.should have_content("Thanks for letting us know about your plans for our wedding!")

  end
end