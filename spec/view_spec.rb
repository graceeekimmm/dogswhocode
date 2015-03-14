require 'spec_helper'

describe "View all animals" do
    before do
        #how do we populate it beforehand for rspec... this is getting repetitive
        dog1 = Dog.create!(:title => "Max", :breed => "Chihuahua")
        dog2 = Dog.create!(:title => "Munar", :breed => "Chocolate Labrador")
    end

    it "see all the existing animals" do
      expect(dog1).to exist
      expect(dog2).to exist
    end
  end

# Scenario: View all animals
#   Given I am on the home page
#   Then I should see “Max”
#   Then I should see “Munar”