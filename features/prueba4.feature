@Feature @LTM_5d102cb7-4219-488f-8763-7df6c56f2d06
Feature: prueba4

  @Smoke @LTM_a344e396-e601-44b6-921e-d1513039c2f7
  Scenario Outline: The client search by "<word>"
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

  @Smoke @LTM_51548fee-b9b9-46de-8261-b2377d7d43a9
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly