class FileHandler

  attr_reader :infile
  def initialize(user_input)
    @infile = File.read(user_input).strip
    #can call on methods in this initialize
    #translator class is needed

  end
end

#file > text > translate > reformat > back to file
# .map(&:chomp) cuts off the new line characters
