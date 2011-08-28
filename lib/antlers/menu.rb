module Antlers
	class Menu
		attr_accessor :title, :action_list
		def initialize(title)
			@title = title
			@action_list = {}
		end
	end
end #This modification to the Antlers module.
