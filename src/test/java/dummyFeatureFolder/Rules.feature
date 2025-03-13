Feature: Password Strength Validation

  Rule: Password must be at least 8 characters long

    Background: Same User Initial state on the website
      Given I am registering myself on a website

    Scenario: Valid password
      When I enter "StrongPass123" as my password
      Then the password should be accepted

    Scenario: Invalid password
      When I enter "12345" as my password
      Then I should see an error message "Password too short"