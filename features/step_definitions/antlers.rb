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
  @messenger.string.split("\n").should include(menu) 
end

When /^I choose (.*)$/ do |choice|
  newantlers
  @messenger.string.split("\n").should include(choice)
  #I should enter a selection, read from stdin
end

Then /^I should (.*)$/ do |action|
  @messenger.string.split("\n").should include(action)
  #Another activity should launch
end

