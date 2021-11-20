Given('I land on Home screen') do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When('I press on menu icon') do
  find_element(accessibility_id: "Open navigation drawer").click
  find_element(accessibility_id: "Open navigation drawer").click
  ##if elements.size()>0 then
  #elements.instance_variable_get(0).click
  #else
    puts("Already Menu pressed")
  #end
end

Then('I should see left side menu') do
  #  find_element(id: "drawerCategoryName") //works
  find_element(xpath: "//*[contains(@text,'Converter')]")

end

When('I press on my conversions button') do
  find_element(xpath: "//*[contains(@text,'My conversions')]").click
end

Then('I land on my conversions screen') do
  find_element(xpath: "//android.widget.TextView[contains(@text,'My conversions')]")
end