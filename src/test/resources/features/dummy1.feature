# Combined Feature File Using All Concepts

Feature: User Login

  Background:
    Given The application is launched

  Rule: User must log in with valid credentials

    Scenario: Successful login
      Given I enter a valid username
      And I enter a valid password
      When I click the login button
      Then I should be redirected to the dashboard

    Scenario Outline: Login with multiple credentials
      Given I enter username "<username>"
      And I enter password "<password>"
      When I click the login button
      Then I should see "<message>"

      Examples:
        | username | password  | message             |
        | user1    | pass1     | Welcome user1!      |
        | invalid  | wrongPass | Invalid credentials |


