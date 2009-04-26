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
