Feature:As a user I want to convert units


  Scenario: when I tap on menu icon, I should see left side menu
    Given I land on Home screen
    When I press on menu icon
    Then I should see left side menu

  Scenario: I should be able to open my conversions screen
    Given I land on Home screen
    When I press on menu icon
    And I press on my conversions button
    Then I land on my conversions screen