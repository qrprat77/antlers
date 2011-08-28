module Antlers
	class Program
		attr_accessor :current_menu
		def initialize(messenger)
			@messenger = messenger
		end
		def start
			@messenger.puts 'This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby'
  			@messenger.puts 'Please make one of the following menu selections '
  			@messenger.puts show_menu("Main Menu")
		end
		
		def show_menu(menu)
			@current_menu = Antlers::Menu.new(menu)
			@current_menu.title
		end
	end
end
