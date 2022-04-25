require './lib/file_handler'

RSpec.describe FileHandler do
  let(:file_handler) {FileHandler.new('sampletest.txt')}
  it 'exists' do
    expect(file_handler).to be_a(FileHandler)
  end
  it 'reads files' do
    expect(file_handler.infile).to eq('hello world')
  end

  xit 'writes to files' do
  expect(file_handler.outfile).to eq([])
  expect(file_handler.write_file).to eq()
  end
end
