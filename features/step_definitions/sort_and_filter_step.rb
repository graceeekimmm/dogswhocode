

When /^(?:|I )press on the field "([^"]*)"$/ do |button|
  click_button(button)
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  pos_e1 = page.body =~ /\b#{e1}/
  pos_e2 = page.body =~ /\b#{e2}/
  assert pos_e1 < pos_e2
end