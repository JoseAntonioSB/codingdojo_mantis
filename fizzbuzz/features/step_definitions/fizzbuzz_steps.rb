Given /^I start a new app:$/ do
  visit '/' # express the regexp above with the code you wish you had
end

When /^I ask a song for "(.*?)"$/ do |number|
  fill_in('fbtext', :with=> number) # express the regexp above with the code you wish you had
  click_button('singButton')
end
