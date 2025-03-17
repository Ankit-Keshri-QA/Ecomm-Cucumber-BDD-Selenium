Feature: Test the Dry Run Feature

  Scenario: Successful Dry Run Test
    Given I do not have the step definition for this feature
    When I run this feature using dry run option
    Then I should not see any error