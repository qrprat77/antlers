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
      return "#{self.txtfile} does not exist!" if !File.exist?(self.txtfile)			

      messenger.puts " == " + self.title + " == "

      CSV.foreach(self.txtfile, :col_sep => ',', :row_sep => :auto) do |row|
        @action_list[row[0]] = row[1..3]
      end

      messenger.puts "Choice        Action"
      messenger.puts "======        ======"
      @action_list.each do | choice, action |
        messenger.puts "  #{choice}       #{action[0]} "
      end


    end

  end
end #This modification to the Antlers module.
