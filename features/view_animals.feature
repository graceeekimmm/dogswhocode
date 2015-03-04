Feature: viewing all animals

  As an Admin
  So that I can keep track of all the animals in the shelter
  I want to be able to see a list of all the animals in the system

Background: animals in database

  Given that the following animals exist:
  | name        | breed              |
  | Max         | Golden Retriever   |
  | Munar       | Chocolate Labrador |

  And I am on the home page

Scenario: View all animals
  When I click on the “All Animals” button
  Then I should be on the All Animals Page
  Then I should see “Max”
  Then I should see “Munar”