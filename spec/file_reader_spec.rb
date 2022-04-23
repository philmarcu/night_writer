require './lib/file_reader'

RSpec.describe FileReader do
  let(:file_reader) {FileReader.new('message.txt')}

  it 'exists' do
    expect(file_reader).to be_a(FileReader)
  end

  xit 'reads files' do
    message = File.read('message.txt')
    expect(file_reader.read).to eq(message)
  end

  it 'can format into a string' do

  end
end
