class TextReader

  attr_accessor :input_filepath, :output_filepath
  def initialize(arg1, arg2)
    @input_filepath = ARGV[0]
    @output_filepath = ARGV[1]
  end
end







#file paths and methods for writing in the command line
#your translate methods will be run (called to) in the initialize in this class
#and put the translator methods in the module

#Dictionary modules are giant hashes that hold your characters and translate them from english to translator
