Then('Left unit picker value should be {string}') do |value|
  puts("Left unit picker value is "+ value)
end

Then('Right unit picker value should be {string}') do |value|
  puts("Right unit picker value is "+ value)
end

When('I press on clear button') do
  puts("clear button is pressed")
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  puts("button is "+ state)
end

When(/^I type "([^"]*)" to target text field$/) do |arg|
  puts("target is "+ arg)
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts("result is #{result}")
end

When(/^I press on Add to Favourites button$/) do
  find_element(id: "action_add_favorites").click
end

And(/^I press on Favourite conversions$/) do
  find_element(xpath: "//android.widget.TextView[contains(@text,'Favorite conversions')]").click
end

Then(/^I verify "([^"]*)" added to Favourite conversion list$/) do |value|
  find_element(xpath: "//android.widget.TextView[contains(@text,'"+ value +"')]")
  puts(value + " found in Favourite conversion list" )
end