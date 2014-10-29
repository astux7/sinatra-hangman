
Given(/^a guess is submitted$/) do
  visit('/game_level?level=easy')
  fill_in 'guess', with: 't'
end

When(/^pressed the button$/) do
  submit_form "guess_form"
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



module Helper
  def last_item=(item)
    @last_item = item
  end
  def last_item
    @last_item
  end
end

World(Helper)
