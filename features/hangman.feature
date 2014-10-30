Feature: Hangman Game
@javascript
Scenario: Correct Guess
Given a guess is submitted
When pressed enter
Then it should return the results

@javascript
Scenario: Incorrect Guess
Given an incorrect guess is submitted
When pressed enter
Then it should display the results



