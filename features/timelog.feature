Feature: Basic time logging
  As a programmer 
  I want to track my time
  So that I can get paid

  Scenario: Start tracking time
    Given the time is 13:05
    When I run `timelog`
    Then the output should contain:
      """
      Not currently logging time
      """
    When I run `timelog start`
    Then the exit status should be 0
    And the output should contain: 
      """
      Time logging started at 13:05
      """
    Given 7 minutes has passed
    When I run `timelog`
    Then the output should contain:
      """
      Start time: 13:05 
      Elapsed time: 13:12
      """
    Given 15 minutes has passed
    When I run `timelog`
    Then the output should contain:
      """
      Start time: 13:05 
      Elapsed time: 13:27
      """
