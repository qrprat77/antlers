module Antlers
	class Menu
		attr_accessor :title, :txtfile, :action_list
		def initialize(title)
			@title = title
			@action_list = {}
			@txtfile = @title.downcase.strip.gsub(" ", "") + ".txt"
		end
		
		
	end
end #This modification to the Antlers module.
