Feature: adding an animal

  As an Admin
  So that I can add a new animal into the rescue
  I want to be able to add an animal to the system with its information

Scenario: Go to “Add Animal” page
  Given that I am on the home page
  When I click on the “Add Animal” button
  I should see the Add Animal page
    
Scenario: Add an animal
  Given that I am on the “Add Animal” page
  When I fill in “Name” with “Munar”
  And I fill in “Breed” with “Chocolate Labrador”
  And I press “Add Animal”
  Then I should be on the home page
  Then I should see “Munar has been successfully added.”
  Then the breed of “Munar” should be “Chocolate Labrador”
    

