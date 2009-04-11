Given /^I am not yet designing an antenna$/ do
end

When /^I start the program$/ do
  program = Antlers::Menu.new
  @message = program.show
end

Then /^antlers should prompt "(.*)"$/ do |message|
	@message.should include(message)
end
