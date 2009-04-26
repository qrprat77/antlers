require File.join(File.dirname(__FILE__), "/../spec_helper")

module Antlers
	describe Program do
		context "Starting up" do 
			it "should give a welcome message" do
				messenger = mock("messenger").as_null_object
				program = Program.new(messenger)
				messenger.should_receive(:puts).with('This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby')
				program.start
			end
			
			it "should display an options menu" do
				messenger = mock("messenger").as_null_object
				program = Program.new(messenger)
				messenger.should_receive(:puts).with("Please make one of the following menu selections ")
				program.start
			end
		end
	end
end
