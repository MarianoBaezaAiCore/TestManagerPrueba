@Feature @LTM_1cf74ea1-cf68-4996-b086-a5018964da46
Feature: scenariotest2

  @Smoke @LTM_ff740899-565e-4982-b087-4fe373514f02
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

  @Smoke @LTM_65e6747f-342f-41ea-aa3c-310b27ec7c61
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly