Given /^I start a new app:$/ do
  visit  '/' # express the regexp above with the code you wish you had
end

When /^I Get a number for (\d+)$/ do |numbers|
  fill_in('guesstext', :with=> numbers) # express the regexp above with the code you wish you had
  click_button('Guess')
end
