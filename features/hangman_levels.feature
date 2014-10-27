Feature: Hangman difficulties

Scenario: Game difficulties
Given in the homepage
When new game is selected
Then page with level difficulties is displayed

Scenario: Easy level page
Given user is on the game difficulty page
When user clicks on the Easy button
Then user should be taken to the Easy Game

Scenario: Medium level page
Given user is on the game difficulty page
When user clicks on the Medium button
Then user should be taken to the Medium Game

Scenario: Hard level page
Given user is on the game difficulty page
When user clicks on the Hard button
Then user should be taken to the Hard Game