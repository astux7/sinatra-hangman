
Given(/^a guess is submitted$/) do
  visit('/game_level?level=easy')
  fill_in 'guess', with: 't'
end

When(/^pressed enter$/) do
   page.execute_script("$('form#guess_form').submit()")
end


Then(/^it should return the results$/) do
  text = page.evaluate_script("document.getElementsByClassName('flash')[0].innerHTML")
  expect(["\n      Correct answer!\n    ","\n    Incorrect answer!\n    "].include?(text)).to be true
end

Given(/^an incorrect guess is submitted$/) do
  visit('/game_level?level=easy')
  fill_in 'guess', with: 'a'
end


Then(/^it should display the results$/) do
  text = page.evaluate_script("document.getElementsByClassName('flash')[0].innerHTML")
  expect(["\n      Correct answer!\n    ","\n    Incorrect answer!\n    "].include?(text)).to be true
end
