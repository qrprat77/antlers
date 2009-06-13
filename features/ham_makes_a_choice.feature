Feature: ham makes a menu selection

  At this point the ham is ready to begin some awesome antenna
  design, or to enter data for a new antenna, or to change the data
  associated with an old antenna.  He may also be ready to leave 
  the application, so he needs a choice to be able to quit.
  
 Scenario Outline: ham sees the menu
  	Given the menu is <menu>
	When I choose <choice>
	Then I should <action>
	
Scenarios: main menu choice
	| menu | choice | action |
