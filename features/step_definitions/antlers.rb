def newantlers
  @messenger=StringIO.new
  @program = Antlers::Program.new(@messenger)
  @program.start
end
