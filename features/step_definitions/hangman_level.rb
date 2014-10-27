Given(/^in the homepage$/) do
   visit('/')
 end  

When(/^new game is selected$/) do
   click_link('New game!')
end

Then(/^page with level difficulties is displayed$/) do
  expect(page).to have_content("Easy")
  expect(page).to have_content("Medium")
  expect(page).to have_content("Hard")
end

Given(/^user is on the game difficulty page$/) do
  visit('/')
  click_link('New game!')
end

When(/^user clicks on the Easy button$/) do
  click_link('Easy')
end


Then(/^user should be taken to the Easy Game$/) do
   expect(page.title).to have_content("Hangman difficulty easy")
end

When(/^user clicks on the Medium button$/) do
  click_link('Medium')
end

Then(/^user should be taken to the Medium Game$/) do
   expect(page.title).to have_content("Hangman difficulty medium")
end


When(/^user clicks on the Hard button$/) do
  click_link('Hard')
end

Then(/^user should be taken to the Hard Game$/) do
   expect(page.title).to have_content("Hangman difficulty hard")
end

