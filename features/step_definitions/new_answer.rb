
Given(/^user is on the homepage$/) do
  visit('/')
end

When(/^user clicks on the create answer button$/) do
  click_link('Create answer!')
end

Then(/^user should be in the create answer page$/) do
   expect(page).to have_content("Create your answer below:")
end

Given(/^user is on the create answer page$/) do
  visit('/')
  click_link('Create answer!')
end

When(/^user fills the fields with answers and clicks on the submit button$/) do
  fill_in 'answer', with: 'i'
  fill_in 'answer_comfirmation', with: 'i'
  click_button('Submit')
end

Then(/^user should be on the game page$/) do
  expect(page).to have_content("Missed")
end

Given(/^user is on the game page$/) do
  visit('/')
  click_link('Create answer!')
  fill_in 'answer', with: 'i'
  fill_in 'answer_comfirmation', with: 'i'
  click_button('Submit')
end

When(/^user guess the answer$/) do
  fill_in 'guess', with: 'i'
  click_button('Submit')
end

Then(/^user will see the answer$/) do
   expect(page).to have_content("You Won!")
end

When(/^user guess the wrong answer$/) do
  fill_in 'guess', with: 'e'
  click_button('Submit')
end

Then(/^the lives will be deducted$/) do
  expect(page).to have_content('Lives left: 17 / 18')
end

Then(/^the guessed alpahabet will be in the thrash area$/) do
   expect(page).to have_content('Missed: e')
end
