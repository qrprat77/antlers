Given /^I am not yet designing an antenna$/ do
end

When /^I start the program$/ do
  Antlers::Menu.new.start
end

Then /^antlers should prompt "Make a choice:"$/ do
  pending
end
