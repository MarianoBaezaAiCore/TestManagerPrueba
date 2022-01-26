@Feature @LTM_1ae463b4-63b8-4139-9907-d9357e734ead
Feature: scenariooutline

  @Smoke @LTM_76bf77c8-e588-473a-9044-33432d465ec1
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

  @Smoke @LTM_8d17d537-63b1-4acc-a712-53ea7cf54b42
  Scenario: The client search by "lippia"
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly