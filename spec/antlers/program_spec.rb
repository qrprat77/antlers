require File.join(File.dirname(__FILE__), "/../spec_helper")

module Antlers
	describe Program do
		context "Starting up" do 
			it "should display an options menu" do
				messenger = mock("messenger")
				program = Program.new(messenger)
				program.should_receive(:puts).with("Please make one of the following menu selections ")
				program.start
			end
		end
	end
end
