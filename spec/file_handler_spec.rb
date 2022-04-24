require './lib/file_handler'

RSpec.describe FileHandler do
  let(:file_handler) {FileHandler.new('sampletest.txt', 'output.txt')}
  let(:outfile) {StringIO.new}


    # infile = StringIO.new('sample of text')
    # FileHandler.new(infile, outfile)

  describe '#read_file' do
    it 'returns text' do
      expect(file_handler.read_file).to eq('sample of text')
    end
  end

  describe '#write_file' do
    it 'writes the text' do
      file_handler.write_file('sample of text')

      outfile.rewind
      expect(outfile.read).to eq('sample of text')
    end
  end

  xit 'makes messages for outfiles' do
    expect(file_handler.content_message).to eq(expected)
  end
end



#-old setup-#
# let(:file_handler) {FileHandler.new('sampletest.txt', 'output.txt')}
