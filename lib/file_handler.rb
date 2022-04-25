class FileHandler
  attr_reader :infile, :outfile
  def initialize(user_input)
    @infile = File.read(user_input).strip
  end
end


#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters

# -old initialize setup- #
# def initialize(user_input)
#   @infile = File.read(user_input).strip
