require File.join(File.dirname(__FILE__), "/../spec_helper")

module Antlers
  describe Program do
    let(:output)  { double("output").as_null_object }
    let(:program) { Program.new(output)}
    
    describe "#start" do 
     
      it "should give a welcome message" do
        output.should_receive(:puts).with('This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby')
        program.start
      end

      it "should display a prompt for an options menu" do
        output.should_receive(:puts).with("Please make one of the following menu selections ")
        program.start
      end

      it "should give the current menu title as Main Menu" do
        output.should_receive(:puts).with(" == Main Menu == ")
        program.start
      end
      
    end #start
    describe "#show_menu(menu)" do
      before(:each) do
        @menu = "Main Menu"
      end #before
      
      it "should create a new menu object" do 
        program.show_menu(@menu)
        program.current_menu.class.should == Antlers::Menu
      end
      
      it "should populate the array_list field in prepartion for action" do
        program.show_menu(@menu)
        program.current_menu.action_list.should_not be_empty
      end
      
    end #show_menu
    
    describe "#next(choice) " do 
      before(:each) do
         @choice = "E" 
         @choicemenu = "A"
         @gotomenu = "antennas"
        
      end
      
      it "should read the choice that the ham enters" do
        program.start
        program.next(@choice)
        program.verb.should == program.current_menu.action_list[@choice][2]

        
      end
      
      it "should have a verb child that actually does the work" do
        program.start
        program.next(@choice)
        program.verb_child.should == program.current_menu.action_list[@choice][1]
      end
      
      it "should call a method if @verb is 'action'" do
        program.start
        program.next(@choice)
        if program.verb == 'action' 
          program.methods.should include((program.verb_child).to_sym)
        else return false
        
        end
      end
      
      it "should move one menu level up if @verb is 'menu'" do
        pending "need to decide if I really want to change directories, or txtfiles"
        program.start
        old_menu = program.current_menu
        program.next(@choicemenu)
        if program.verb == 'menu'
          program.current_menu.should == old_menu + "/" 
        else return false
        
        end
      
      end
          
      
    end #next
    
  end #describe program
end
