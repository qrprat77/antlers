require File.join(File.dirname(__FILE__), "/../spec_helper")
module Antlers
	describe Menu do
		context "display a Menu from a text file" do
			before (:each) do
				@menu = Menu.new("Title")
			end #before
			
			it "should have a title with title named Title" do
				@menu.title.should == "Title"
			end
			
			it "should expect a text file that establishes choices" do
				@menu.txtfile.should == @menu.homedir + "title.txt"
				
			end
			
			
			
		end #new menu context
	
	end #menu
end #module
