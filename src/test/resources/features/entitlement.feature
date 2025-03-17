Feature: Entitlement - Request Access from AGNES UI
  As an employee working in AGNES
  I want to create an entitlement for myself
  So that I can use the resource for my project purposes

  @Smoke
  Scenario Outline: Successful Entitlement Creation via Request Access
    Given I am on the homepage
    When I enter my "<username>" and "<password>"
    And I Click on Login Button
    And I click on Services::Request Access
    And I enter the "<reason>" and "<resource name>"
    And I Click on Add button
    And I Click on Submit button
    Then I should be redirected to home page and see a "<message>"

    Examples:
      | username             | password    | reason  | resource name     | message                                |
      | ankit.keshri@ubs.com | Cadmus_2021 | Testing | AA_PROD_100009876 | Your request is successfully completed |
      | ankit.keshri@ubs.com | Cadmus_2021 | Testing | AA_TE2_100001236  | Your request is successfully completed |
      | ankit.keshri@ubs.com | Cadmus_2021 | Testing | AA_DEV_100007811  | Your request is successfully completed |

