require 'spec_helper'

describe "filter animals" do
  context "filter" do
    before do
      dog1 = Dog.create(:title => "Bryan", :breed => "Chocolate Labrador")
      dog2 = Dog.create(:title => "Max", :breed => "Chihuahua")
      dog3 = Dog.create(:title => "Munar", :breed => "Chocolate Labrador")
      #how are we going to implement filtering
      #fill_in "Breed", :with => "Chocolate Labrador" // if we do it by text fill with autocomplete
    end

    it "filter the dog by specified field" do
      expect(dog1).to exist
      expect(dog2).not_to exist
      expect(dog3).to exist
    end
  end
end


# Scenario: Filter animals by field
#   When I filter by breed=”Chocolate Labrador”
#   Then I should see “Bryan”
#   And I should see “Munar”
#   And I should not see “Max”