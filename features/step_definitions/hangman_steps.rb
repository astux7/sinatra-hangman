
Given(/^a guess is submitted$/) do
  visit('/game_level?level=easy')
  fill_in 'guess', with: 't'
end

When(/^pressed the button$/) do
  #submit_form "guess_form"
  form = page.find("guess_form")
  class << form
    def submit!
      Capybara::RackTest::Form.new(driver, native).submit({})
    end
  end
  form.submit!
end

Then(/^it should return the results$/) do
  expect(page).to have_content("Correct")
end

Given(/^an incorrect guess is submitted$/) do
  visit('/game_level?level=easy')
  fill_in 'guess', with: 'a'
end

Then(/^it should display the results$/) do
  expect(page).to have_content("Incorrect")
end
