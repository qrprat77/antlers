module Antlers
	class Program
		def initialize(messenger)
			@messenger = messenger
		end
		def start
  			@messenger.puts "Please make one of the following menu selections " #example as written from the RSPEC book, doesn't pass.
			#puts "Please make one of the following menu selections " # This example passes
		end
	end
end
