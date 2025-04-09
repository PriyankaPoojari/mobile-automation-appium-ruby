Feature: Tests for Home screen functionlity


  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on Home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then Show All button should be enabled
    When I press on clear button
    Then Show All button should be disabled

    @conversion
  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
    Examples:
    |target|result|
    |1     |12    |
    |2     |24    |
    |3     |36    |
    |9     |108   |


  Scenario: User is able to add Conversions to Favourite List
    Given I land on Home screen
    When I press on Add to Favourites button
    And I press on menu icon
    And I press on Favourite conversions
    Then I verify "Length" added to Favourite conversion list

