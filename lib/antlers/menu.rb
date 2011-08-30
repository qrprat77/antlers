module Antlers
	class Menu
		attr_accessor :title, :txtfile, :action_list
		def initialize(title)
			@title = title
			@action_list = {}
			@txtfile = @title.downcase.strip.gsub(" ", "") + ".txt"
		end
		
		def create_txt_file(home_dir)
			@home_dir = home_dir
			#test to see if the file exists in home dir
			#if it does not exist, create it
			#if it does exist, do not create, warn, and fail.
		end
		
	end
end #This modification to the Antlers module.
