Feature: Hangman own answer

Scenario: Create answer page
Given user is on the homepage
When user clicks on the create answer button
Then user should be in the create answer page

Scenario: User creates answer
Given user is on the create answer page
When user fills the fields with answers and clicks on the submit button
Then user should be on the game page

@javascript
Scenario: Playing the game
Given user is on the game page
When user guess the answer
Then user will see the answer
@javascript
Scenario: Guessing wrong answer
Given user is on the game page
When user guess the wrong answer
Then the lives will be deducted 
And the guessed alpahabet will be in the thrash area