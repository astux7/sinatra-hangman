
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
  click_link('Create answer!')
end

When(/^user fills the fields with answers and clicks on the submit button$/) do
  fill_in 'answer', with: 'i'
  click_button('submit')
end

Then(/^user should be on the game page$/) do
  expect(page).to have_content("Missed")
end

Given(/^user is on the game page$/) do
  
end

When(/^user guess the answer$/) do
  
end

Then(/^user will see the answer$/) do
  
end

When(/^user guess the wrong answer$/) do
  
end

Then(/^the lives will be deducted$/) do
  
end

Then(/^the guessed alpahabet will be in the thrash area$/) do
  
end
