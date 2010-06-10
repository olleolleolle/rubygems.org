Feature: Edit Profile
  In order to keep their information up-to-date
  A user
  Should be able to edit their profile

  Scenario: Edit Handle
    Given I have signed in with "john@example.com/password"
    And my handle is "johndoe"
    And I am on my profile page

    When I follow "Edit"
    And I fill in "Handle" with "john"
    And I press "Update"

    Then I should see my new "Handle"

  Scenario: Update with Existing Handle
    Given I have signed in with "janedoe@example.com/password"
    And my handle is "doe"

    And I have signed in with "johndoe@example.com/password"
    And my handle is "johndoe"
    And I am on my profile page

    When I follow "Edit"
    And I fill in "Handle" with "doe"
    And I press "Update"

    Then I should see "Handle has already been taken"
