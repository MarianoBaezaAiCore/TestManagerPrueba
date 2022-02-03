@Feature @LTM_1a36326b-9ca9-4054-8280-a84709d8ceec
Feature: prueba4_deleted.feature

  @Smoke @LTM_2ddc6e5a-93ad-4e47-910b-47c323057fcb
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

  @Smoke @LTM_22d003ce-6dab-44d2-8204-d0acb2d16b97
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly