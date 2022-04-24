require 'stringio'

class FileHandler

  attr_reader :infile, :outfile
  def initialize(infile, outfile = nil, user_input)
    @infile = File.read(user_input).strip
    @outfile = outfile
    #can call on methods in this initialize
    #translator class is needed
    # content_message
  end

  # def read_file(infile = 0)
  #   @content ||= @infile.read.strip
  # end

  def write_file(content)
    @outfile.write(content)
  end

  def content_message
    total_chars = read_file(content).chomp.size
    puts "Created #{content} containing #{total_chars} characters "
  end
end

#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters

# -old initialize setup- #
# def initialize(user_input)
#   @infile = File.read(user_input).strip
