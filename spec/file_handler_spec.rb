require './lib/file_handler'
require 'stringio'

RSpec.describe FileHandler do
  let(:outfile) {StringIO.new}

  subject(:file_handler) do
    infile = StringIO.new('message.txt')
    FileHandler.new(infile, outfile)
  end

  describe "file_handler" do
    it "reads the file" do
      expect(file_handler.read_file).to eq('message.txt')
    end
  end
end
