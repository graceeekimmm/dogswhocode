Feature: display list of animals sorted by different criteria

  As an Admin
  So that I can list all animals in order according to a particular field
  I want to be able to sort animals by a particular field

Background: animals in database

  Given the following animals exist:
  | name        | breed              |
  | Max         | Golden Retriever   |
  | Munar       | Chocolate Labrador |
  | Bryan       | Chocolate Labrador |

  And I am on the "All Animals" page

Scenario: Sorting animals by field
  Given that I am on the “All Animals” page
  And I click on the field “name”
  Then I should see “Bryan” before “Max”
  Then I should see “Max” before “Munar”