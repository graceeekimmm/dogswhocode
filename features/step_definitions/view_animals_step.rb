
Given /^that the following animals exist:$/ do |fields|
	fields.hashes.each do |dog|
		Dog.create!(dog)
	end
end