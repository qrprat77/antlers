require File.join(File.dirname(__FILE__), "/../spec_helper")
module Antlers
	describe Menu do
		context "display a Menu from a text file" do
			before (:each) do
				@messenger = mock("messenger").as_null_object
				@menu = Menu.new("Title_test")
			end #before
			
			it "should have a title with title named Title" do
				@menu.title.should == "Title_test"
			end
			
			it "should expect a text file that establishes choices" do
				@menu.txtfile.should == @menu.homedir + "title_test.txt"
			end
			
			it "should throw an error if asked to display a menu that does not exist" do
				@menu.display_menu(@messenger).should == "#{@menu.txtfile} does not exist!"
			end
			
			it "should load the contents of the text file into the action list" do
				@menu.action_list.empty?.should == false
				@menu.display_menu(@messenger)
				
			end
			
			
		end #new menu context
	
	end #menu
end #module
