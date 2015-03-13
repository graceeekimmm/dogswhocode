Feature: viewing all animals

  As an Admin
  So that I can keep track of all the animals in the shelter
  I want to be able to see a list of all the animals in the system

Background: animals in database
  Given I am logged in as an admin
  Given that the following animals exist:
  | title       | description        |
  | Max         | Golden Retriever   |
  | Munar       | Chocolate Labrador |


Scenario: View all animals
  Given I am on the home page
  Then I should see “Max”
  Then I should see “Munar”