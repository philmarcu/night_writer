require 'stringio'

class FileHandler

  attr_reader :infile, :outfile
  def initialize(user_input)
    @infile = File.read(user_input).strip
    @outfile = outfile
    #can call on methods in this initialize
    #translator class is needed
    # content_message
  end

  def write_file
    @outfile ||= @infile
  end

  def content_message
    puts "Created #{ARGV[1]} containing #{total_chars} characters "
  end
end

#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters

# -old initialize setup- #
# def initialize(user_input)
#   @infile = File.read(user_input).strip
