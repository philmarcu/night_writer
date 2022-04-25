class FileHandler
  attr_reader :infile, :outfile
  def initialize(user_input)
    @infile = File.read(user_input).strip
    @outfile = outfile
  end

  def write_file
    # require "pry"; binding.pry
    @outfile = File.open(ARGV[1], 'w')
  end
end


#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters

# -old initialize setup- #
# def initialize(user_input)
#   @infile = File.read(user_input).strip
