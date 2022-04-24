require './lib/file_handler'

RSpec.describe FileHandler do
  let(:file_handler) {FileHandler.new('message.txt')}

  it 'reads files' do
    expect(file_handler.infile).to eq(['woopity scoop'])
  end
end
