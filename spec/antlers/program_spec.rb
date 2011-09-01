require File.join(File.dirname(__FILE__), "/../spec_helper")

module Antlers
  describe Program do
    describe "#start" do 
      before(:each) do
        @messenger = mock("messenger").as_null_object
        @program = Program.new(@messenger)
      end

      it "should give a welcome message" do
        @messenger.should_receive(:puts).with('This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby')
        @program.start
      end

      it "should display a prompt for an options menu" do
        @messenger.should_receive(:puts).with("Please make one of the following menu selections ")
        @program.start
      end

      it "should give the current menu title as Main Menu" do
        @messenger.should_receive(:puts).with(" == Main Menu == ")
        @program.start
      end
      
    end #start
    describe "#show_menu(menu)" do
      before(:each) do
        @messenger = mock("messenger").as_null_object
        @program = Program.new(@messenger)
        @menu = "Main Menu"
        
      end #before
      
      it "should create a new menu object" do 
        @program.show_menu(@menu)
        @program.current_menu.class.should == Antlers::Menu
      end
      
      it "should display the current menu" 
      
    end #show_menu
  end #describe program
end
