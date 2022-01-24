@Feature @LTM_bbb1fed0-ce05-4b08-bc43-2ab16f6d6e91
Feature: featureprueba2

  @Smoke @LTM_a97619bf-01fc-4230-ba0a-76f39a05c829
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

  @Smoke @LTM_81f8edf9-ef38-4856-9429-3812669b86a2
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly