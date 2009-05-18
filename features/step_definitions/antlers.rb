Given /^I am not yet designing an antenna$/ do
end

When /^I start the program$/ do
  @messenger = StringIO.new
   program = Antlers::Program.new(@messenger)
   program.start
end

Then /^antlers should prompt "(.*)"$/ do |message|
	@messenger.string.split("\n").should include(message)
end

Given /^the program has started$/ do
  @messenger=StringIO.new
  program = Antlers::Program.new(@messenger)
  program.start
end

Then /^the ham should see a menu with various options$/ do #|menu|
	#@messenger.string.split("\n").should include(menu)
  pending
end

Then /^the ham should be able to enter an option from those choices$/ do
  pending
end
