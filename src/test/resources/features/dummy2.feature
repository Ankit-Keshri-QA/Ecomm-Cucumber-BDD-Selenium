# User Login Flow (Scenario Outline + Examples)

Feature: User Login Functionality

  @Sanity
  Scenario Outline: Successful and unsuccessful user login
    Given the user is on the login page
    When the user enters username "<username>" and password "<password>"
    Then the user should see "<message>"

    Examples:
      | username  | password  | message                      |
      | user1     | pass123   | Welcome user1!              |
      | user2     | wrongPass | Invalid credentials message |
      | locked  User| pass123   | Account locked message      |