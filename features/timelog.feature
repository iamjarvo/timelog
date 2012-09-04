Feature: Basic time logging
  As a programmer 
  I want to track my time
  So that I can get paid

  Scenario: Start tracking time
    Given the time is 13:05
    When I run `timelog start`
