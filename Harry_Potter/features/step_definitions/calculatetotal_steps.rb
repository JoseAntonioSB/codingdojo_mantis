Given /^I open Harry Potter Store$/ do
  visit '/'
end

When /^I add (\d+) "(.*?)" book into my shopping cart$/ do |titleBook, quantity|
	fill_in(getControlsName(titleBook), :with => quantity)
end

When /^I Ask Total to Pay$/ do
  click_button("btnTotal")
end


def getControlsName(titleBook)
	"piedraFilosofalText"
end