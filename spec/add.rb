require 'spec_helper'

describe "Add" do
    before do
        click_link 'Enter a new dog'
        fill_in "Title", :with => "Munar"
        fill_in "Description", :with => "dark but lovely"
        click_button 'Create Dog'
    end

    it "add a new animal" do
        should see "Munar"
        should see "Entered by admin@admin.com"
    end
  end
end


  # Scenario: Add an animal
  #   Given I am on the new dog page
  #   When I fill in "Title" with "Munar"
  #   And I fill in "Description" with "dark but lovely"
  #   And I press "Create Dog"
  #   Then I should see "Munar"
  #   Then I should see "Entered by admin@admin.com"