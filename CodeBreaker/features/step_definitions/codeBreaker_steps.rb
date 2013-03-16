Given /^Agrego cuatro numeros$/ do
 visit '/' # express the regexp above with the code you wish you had
end

When /^Pregunto si mis (\d+) son correctos$/ do |number|
  fill_in('numerotext', :with=> number) # express the regexp above with the code you wish you had
  click_button('adivinar')
end

Then /^Me regresa "(.*?)"$/ do |code|
  last_response.body.should =~ /#{code}/m
end
