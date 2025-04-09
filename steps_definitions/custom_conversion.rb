
Then('I press on Create your first conversion') do
  find_element(id: "btn_new_custom_conversion").click
end

When('I type custom Conversion name as {string}') do |name|
  sleep 3
  find_element(xpath: "//*[contains(@text,'Conversion name')]").click
  find_element(xpath: "//*[contains(@text,'Conversion name')]").send_keys(name)
end

When('I press on New Unit Button') do
  find_element(id: "btn_new_custom_unit").click
end

Then('I type {string} as unit name') do |name|
  sleep 3
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(name)
end

Then('I type {string} as unit symbol') do |symbol|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol)
end

Then('I type {string} as unit value') do |value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(value)
end

Then('I press Save on custom new unit') do
  find_element(id: "btn_unit_dtls_ok").click
  sleep 3
end

Then('I verify {string} added to My conversions list') do |conversionName|
  find_element(xpath: "//android.widget.TextView[contains(@text,'"+ conversionName +"')]")
end

And(/^I press Save on New Conversion$/) do
  find_element(id: "action_confirm_custom_category").click
  sleep 3
end