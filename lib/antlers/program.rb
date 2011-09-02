module Antlers
  class Program
    attr_accessor :current_menu
    attr_reader :verb, :verb_child
    
    def initialize(output)
      @output = output
    end
    def start
      @output.puts 'This is ANTLERS! A  program for designing antennas for the ham radio operator written in ruby'
      @output.puts 'Please make one of the following menu selections '
      show_menu("Main Menu")
    end

    def show_menu(menu)
      @current_menu = Antlers::Menu.new(menu)
      @current_menu.display_menu(@output)
    end
    
    def next(next_action)
      @verb = @current_menu.action_list[next_action][2]
      @verb_child = @current_menu.action_list[next_action][1]
      #case @verb
      #when "menu" 
        #go to the menu specified, display it
      #when "action"
      #  self.send(@verb_child)
      #else
      #  @output.puts "Error! don't know how to #{@verb_child}"
      #end #case
      
    end
    
    def edit_current_menu
    #do some prompting and interfacing with Antlers::Menu
    end
    
    
  end
end
