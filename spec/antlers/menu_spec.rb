require File.join(File.dirname(__FILE__), "/../spec_helper")
module Antlers
	describe Menu do
		context "new Menu" do
			before (:each) do
				@menu = Menu.new("Title")
			end #before
			
			it "should have a title with title named Title" do
				@menu.title.should == "Title"
			end
			
		end #new menu context
	
	end #menu
end #module
