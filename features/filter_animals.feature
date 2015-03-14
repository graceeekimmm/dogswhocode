Feature: display list of animals filtered by different criteria

  As an Admin
  So that I can find all animals with a shared attribute
  I want to be able to filter animals by a particular field

Background: animals in database

  Given the following animals exist:
  | name        | breed              |
  | Max         | Golden Retriever   |
  | Munar       | Chocolate Labrador |
  | Bryan       | Chocolate Labrador |

  And I am on the "All Animals" page

Scenario: Filter animals by field
  When I filter by breed=”Chocolate Labrador”
  Then I should see “Bryan”
  And I should see “Munar”
  And I should not see “Max”