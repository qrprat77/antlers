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
  @messenger.string.split("\n").should include(' == ' + menu + ' == ')  
end

When /^I choose (.*)$/ do |choice|
  @messenger.string.split(" ").should include(choice)
  #input choice
  @program.next(choice).should include(@program.current_menu.next_action)
end

Then /^I should (.*)$/ do |launch|
pending
  launch.split(" ").each do | word | 
    @messenger.string.split(" ").should include(word)
  end
  #output results menu or formula
  #if it's a menu, go to the next menu
  #if it's an action, go to the next action
end

