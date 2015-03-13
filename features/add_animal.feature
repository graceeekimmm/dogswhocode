Feature: adding an animal
  As an Admin
  So that I can add a new animal into the rescue
  I want to be able to add an animal to the system with its information

  Background: Set up admin user
    Given I am logged in as an admin

  Scenario: Go to “Add Animal” page
    Given I am on the home page
    When I follow "Enter a new dog"
    Then I should see "Enter a new dog"
    And I should be on the new dog page
    When I fill in "Munar" for "Title"

  Scenario: Add an animal
    Given I am on the new dog page
    When I fill in "Title" with "Munar"
    And I fill in "Description" with "dark but lovely"
    And I press "Create Dog"
    Then I should see "Munar"
    Then I should see "Entered by admin@admin.com"
    

