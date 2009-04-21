require File.join(File.dirname(__FILE__), "/../spec_helper")

module Antlers
	describe Program do
		context "Starting up" do 
			it "should display an options menu" do
				program.should_receive(:puts).with("Please make a selection: ")
				program.start
			end
		end
	end
end
