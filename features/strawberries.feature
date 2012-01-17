Feature: Live
  In order to Live
  people
  want to be able to eat strawberries
  
  Scenario: Eating strawberries
    Given a strawberry that is "blue"
    When I go to the homepage
    Then I should see "There's 1 strawberry"
    When I follow "Eat the blue strawberry"
    Then I should see "Strawberry eaten!"