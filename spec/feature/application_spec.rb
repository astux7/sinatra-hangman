require "spec_helper"

feature "hangman application" do
  scenario "home page" do
    visit '/'
    expect(page).to have_content("Hangman")
  end
end