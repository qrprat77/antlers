Feature: ham starts antlers
	As a ham
	I want to start the antlers program
	so that I can design awesome antennas to build.
	Scenario: start antlers
		Given I am not yet designing an antenna
		When I start the program
		Then antlers should prompt "Make a choice:"
		
