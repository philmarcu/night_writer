class FileReader

  attr_reader :format
  def initialize(user_input)
    @format = File.readlines(user_input)
    #can call on methods in this initialize
    #translator class is needed

  end
end

#file > text > translate > reformat > back to file
