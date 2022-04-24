require './lib/file_handler'

RSpec.describe FileHandler do
  let(:file_handler) {FileHandler.new('sampletest.txt')}

    # infile = StringIO.new('sample of text')    # FileHandler.new(infile, outfile)


  it 'reads files' do
    expect(file_handler.infile).to eq('hello world')
  end

  it '#writes file' do
    expect(file_handler.write_file). to eq('hello world')
  end

  it 'makes messages for outfiles' do
    expect(file_handler.content_message).to eq(expected)
  end
end



#-old setup-#
# let(:file_handler) {FileHandler.new('sampletest.txt', 'output.txt')}
