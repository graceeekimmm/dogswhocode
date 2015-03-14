require 'spec_helper'

describe "sort animals" do
  context "sort" do
    before do
      dog1 = Dog.create(:title => "Bryan")
      dog2 = Dog.create(:title => "Max")
      dog3 = Dog.create(:title => "Munar")
      click_button "Title"
    end

    it "sorted in alphabetical order" do
      dog1.appears_before(dog2)
      dog2.appears_before(dog3)
    end
  end
end

# Scenario: Sorting animals by field
#   Given that I am on the “All Animals” page
#   And I click on the field “name”
#   Then I should see “Bryan” before “Max”
#   Then I should see “Max” before “Munar”