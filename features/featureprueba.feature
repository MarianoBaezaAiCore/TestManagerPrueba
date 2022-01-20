@Feature @LTM_068cffae-404b-44d8-bfd0-664fa1084fef
Feature: featureprueba

  @Smoke @LTM_c48901ed-f533-47c3-91bf-3ca175c3f12b
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

  @Smoke @LTM_f4621924-f908-4475-a803-9a923d8ca9a7
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly