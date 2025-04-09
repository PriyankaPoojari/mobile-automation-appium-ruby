Feature: To test Custom Conversion feature

  @wip
  Scenario: User creates a new custom conversion
    Given I land on Home screen
    Then I press on menu icon
    Then I press on my conversions button
    And I press on Create your first conversion
    When I type custom Conversion name as "Power"
    And I press on New Unit Button
    Then I type "HorsePower" as unit name
    And I type "HP" as unit symbol
    And I type "1" as unit value
    And I press Save on custom new unit
    When I press on New Unit Button
    Then I type "MulePower" as unit name
    And I type "MP" as unit symbol
    And I type "0.5" as unit value
    And I press Save on custom new unit
    And I press Save on New Conversion
    Then I verify "Power" added to My conversions list