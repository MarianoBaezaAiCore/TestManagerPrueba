@Feature @LTM_8fd79209-308d-4181-9c5a-a8c86ba5201a
Feature: scenariooutline

  @Smoke @LTM_6e75e049-4e74-4aa2-a11d-326a73ecd153
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

  @Smoke @LTM_65131be2-abee-417c-b0a2-b50ae5f809c9
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly