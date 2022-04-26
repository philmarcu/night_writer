require 'stringio'

class FileHandler
  attr_reader :infile, :outfile, :output
  def initialize(infile, outfile)
    @infile = infile
    @outfile = outfile
    @output = nil
  end

  def read_file
    @output ||= @infile.read
  end

  def write_file(text)
    @outfile.write(text)
  end
end







#-- old write method--#
# def write_file
#   @output.each do |string|
#     File.open(@outfile, "w") {|file| file.write(string)}
#   end
# end

#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters

# -old initialize setup- #
# def initialize(user_input)
#   @infile = File.read(user_input).strip
