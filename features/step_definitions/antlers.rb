def newantlers
  @messenger=StringIO.new
  @program = Antlers::Program.new(@messenger)
  @program.start
end
Given /^I am not yet designing an antenna$/ do
end

When /^I start the program$/ do
  newantlers
end

Then /^antlers should prompt "(.*)"$/ do |message|
	@messenger.string.split("\n").should include(message)
end

Given /^the program has started$/ do
 	newantlers
end

Given /^the menu is (.*)$/ do |menu|
  newantlers
  @messenger.string.split("\n").should include(menu) # express the regexp above with the code you wish you had
end

When /^I choose A$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should launch antlers$/ do
  pending # express the regexp above with the code you wish you had
end

