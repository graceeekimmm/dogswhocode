
Given /^that the following animals exist:$/ do |fields|
	params = {}
	fields.rows.hash.each do |name, value|
		params[name.to_sym] = value
	end
	Dog.create!(params)
end