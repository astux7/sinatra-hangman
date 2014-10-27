Feature: Game over

Scenario: Give up in the middle of the game
Given user has to guess the hidden answer
When user clicks on the Give up button
Then user should be in game over page 
And correct answer should be shown

Scenario: User won the game
Given user has to guess the hidden answer
When user guesses the correct answer
Then the game over page should be shown
And correct answer should be shown

Scenario: User loses all the lives
Given user guesses the wrong answer
And user loses all the lives
Then correct answer should be shown