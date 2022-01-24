@Feature @LTM_86a07db9-d600-4eef-8836-480382fe5ea9
Feature: featureprueba

  @Smoke @LTM_ffe2b4bd-68ee-4893-b767-2e64d0677f29
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

  @Smoke @LTM_e0da5ac5-da15-46b2-beb4-438dcfd87ee6
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly