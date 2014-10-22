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

