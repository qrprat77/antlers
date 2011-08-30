require File.join(File.dirname(__FILE__), "/../spec_helper")
module Antlers
	describe Menu do
		context "display a Menu from a text file" do
			before (:each) do
				@menu = Menu.new("Title_test")
			end #before
			
			it "should have a title with title named Title" do
				@menu.title.should == "Title_test"
			end
			
			it "should expect a text file that establishes choices" do
				@menu.txtfile.should == @menu.homedir + "title_test.txt"
			end
			
			it "should throw an error if asked to display a menu that does not exist" do
				@menu.display_menu.should =="#{@menu.txtfile} does not exist!"
			end
			
			
		end #new menu context
	
	end #menu
end #module
