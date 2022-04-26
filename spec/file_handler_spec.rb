require './lib/file_handler'

RSpec.describe FileHandler do
  let(:file_handler) {FileHandler.new(infile, outfile)}
  let(:infile) {StringIO.new('Test')}
  let(:outfile) {StringIO.new}

  it 'exists' do
    expect(file_handler).to be_a(FileHandler)
  end
  it 'reads files' do
    expect(file_handler.read_file).to eq('Test')
  end

  it 'writes to files' do
  file_handler.write_file('hello world')
  outfile.rewind
  expect(outfile.read).to eq('hello world')
  end
end
