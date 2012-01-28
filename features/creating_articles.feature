Feature: Creating articles
  In order to have articles
  As a user
  I want to create them easily

  Scenario: Creating an article
    Given I am on the home page
    When I follow "New Article"
    And I fill in "Name" with "TextMate2"
    And I press "Create Article"
    Then I should see "Article has been created"