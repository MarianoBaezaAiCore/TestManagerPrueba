@Feature @LTM_93d94502-52c9-43e6-9ae2-0f11d00eeccf
Feature: scenariotest3

  @Smoke @LTM_e4b70599-dedb-439c-9bfe-f3563a70d890
  Scenario Outline: 
    Given The client is in google page
    When The client search for word <word>
    Then The client verify that results are shown properly

  @crowdar
    Examples: 
      | word    |
      | crowdar |

  @automation
    Examples: 
      | word       |
      | automation |

  @docker
    Examples: 
      | word   |
      | docker |

  @vagrant
    Examples: 
      | word     |
      | vagrant  |
      | cucumber |

  @Smoke @LTM_12e8e807-314d-4018-a476-688564339376
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly