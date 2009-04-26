module Antlers
	class Program
		def initialize(messenger)
			@messenger = messenger
		end
		def start
			@messenger.puts 'This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby'
  			@messenger.puts 'Please make one of the following menu selections '
		end
	end
end
