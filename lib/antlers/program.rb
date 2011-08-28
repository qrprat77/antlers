module Antlers
	class Program
		def initialize(messenger)
			@messenger = messenger
		end
		def start
			@messenger.puts 'This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby'
  			@messenger.puts 'Please make one of the following menu selections '
  			show_menu(:main)
		end
		
		def show_menu(menu)
			@current_menu = Antlers::Menu.new(menu)
			@messenger.puts @current_menu.title
		end
	end
end
