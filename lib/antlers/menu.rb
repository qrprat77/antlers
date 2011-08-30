module Antlers
	class Menu
		attr_accessor :title, :txtfile, :action_list
		attr_reader :homedir
		def initialize(title)
			@title = title
			@action_list = {}
			@homedir = File.join(File.dirname(__FILE__), "/../txt_files/")
			@txtfile = @homedir + @title.downcase.strip.gsub(" ", "") + ".txt"
			
		end
		
		def display_menu()
			#test to see if the file exists in home dir
			return "#{self.txtfile} does not exist!" if !File.exist?(self.txtfile)			
			#if it does not exist, warn, and fail.
			#if it does exist, show the menu
		end
		
	end
end #This modification to the Antlers module.
