@Feature
Feature: scenario name!!

  @Smoke
  Scenario Outline: 
    Given The client is in google page
    When The client search for word <word>
    Then The client verify that results are shown properly
    @crowdar
    Examples:
      | word           |
      | crowdar        |
    @automation
    Examples:
      | word           |
      | automation     |
    @docker
    Examples:
      | word           |
      | docker         |
    @vagrant
    Examples:
      | word           |
      | vagrant        |
      | cucumber       |

  @Smoke
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly
