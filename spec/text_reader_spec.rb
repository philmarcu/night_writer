require './lib/text_reader'

RSpec.describe TextReader do

  it 'exists' do
    text_reader = TextReader.new(ARGV[0], ARGV[1])
    expect(text_reader).to be_a(TextReader)
  end
end
#count character method
