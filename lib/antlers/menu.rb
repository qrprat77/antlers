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
		
		def display_menu(messenger)
			#test to see if the file exists in home dir
			return "#{self.txtfile} does not exist!" if !File.exist?(self.txtfile)			
			#if it does exist, show the title
			messenger.puts self.title
			#load the file contents into @action_list
			#in the following format:
			#{ :selection => [:action, :action_type]}
			
		end
		
	end
end #This modification to the Antlers module.
