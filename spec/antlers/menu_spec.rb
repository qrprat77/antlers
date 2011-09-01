require File.join(File.dirname(__FILE__), "/../spec_helper")
module Antlers
  describe Menu do
    before (:each) do
      @messenger = mock("messenger").as_null_object
      @menu = Menu.new("Main Menu")
      @menu2 = Menu.new("fake Menu")

    end #before
    
    describe "#initialize(title)" do 
      it "should create a menu object with @title of title" do
        @menu.title.should == "Main Menu"
      end
      
      it "should create a menu object with a blank @action_list" do 
        @menu.action_list.empty?.should be_true
      end
      
      it "should create a menu object with a @homedir" do
        @menu.homedir.should_not be_false
      end
      
      it "should create a menu object with a @txtfile" do 
        @menu.txtfile.should_not be_false
      end
    end #initialize
    
    describe "#display_menu(messenger)" do 
      it "should return an error if @txtfile does not exist" do
        @menu2.display_menu(@messenger).should == "#{@menu2.txtfile} does not exist!"
      end
      
      it "should populate @action_list from @txtfile" do 
        @menu.display_menu(@messenger)
        @menu.action_list.should_not be_empty
      end
      
      it "should display the contents of @txtfile" do 
        @menu.action_list.each do |choice, action|
          @messenger.should_receive(:puts).with("#{choice}       #{action[0]}")
        end
      end
      
    end #display_menu
    
  end #describe menu

end #module
    
