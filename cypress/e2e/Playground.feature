Feature: Feature 1
    
    Background: Test setup
        Given I am in playground page 
    
    @regression 
    Scenario: Scenario 1
        # Given I am in playground page 
        Then the "java" checkbox should be disabled
        And the "python" checkbox should be enabled
    
    @smoke 
    Scenario: Scenario 2
        # Given I am in playground page 
        When I check the "python" checkbox
        Then the checkbox with id "check_python" should be selected
        Then the checkbox with id "check_javascript" should be unselected

    @regression @smoke 
    Scenario: Scenario 3
        # Given I am in playground page 
        Then I should see the "german" toggle
        And I should not see the "PHP" checkbox

    
    Scenario Outline: Scenario 4 - <language>
    # Given I am in playground page 
    When I check the "<language>" checkbox
    Then the checkbox with id "<checkboxID>" should be <status>
    And the validate text with id "<textID>" should have text "<validateText>"
    Examples:
      | language   | checkboxID       | status   | textID         | validateText|
      | python     | check_python     | selected | check_validate | PYTHON      |
      | javascript | check_javascript | selected | check_validate | JAVASCRIPT  |

