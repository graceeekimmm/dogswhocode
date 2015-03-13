

Given /^I am logged in as an admin$/ do
	User.create!({:email=>"admin@admin.com",
		             :password=>"password"})
	step "I am on the sign in page"
	step %Q|I fill in "Email" with "admin@admin.com"|
	step %Q|I fill in "Password" with "password"|
	step %Q|I press "Log in"|
end