Feature: Dummy Feature
  As a dummy User visiting a fake website
  If I enter my details in the Register User Form
  My Account should be created on the website

  Scenario: Dummy Register
    Given I am on the fake Register page
    When I enter my details
    And I enter my lastname
    And I enter my username
    And I enter my password
    And I click on the Adult checkbox
    Then I should be registered and navigated to the Login page




