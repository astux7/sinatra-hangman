
Given(/^a guess is submitted$/) do
  visit('/game_level?level=easy')
  #click_link('New game!')
   fill_in 'guess', with: 't'
end

When(/^pressed the button$/) do
  click_button('submit')
end

Then(/^it should return the results$/) do
 expect(page).to have_content("Correct")
end

Given(/^an incorrect guess is submitted$/) do
   visit('/')
  click_link('New game!')
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
