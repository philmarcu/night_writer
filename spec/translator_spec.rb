require './lib/translator'
require './lib/eng_dictionary'
require './lib/bra_dictionary'

RSpec.describe Translator do

  it 'exists' do
    translator = Translator.new("hello world")
    expect(translator).to be_an_instance_of(Translator)
  end

  it 'can output an array' do
    translator = Translator.new("hello")
    expect(translator.output_arr).to eq(["0.", "00", "..", "0.", ".0", "..", "0.", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "0."])
  end

  it 'can sort lines' do
    translator = Translator.new("hello world")
    expect(translator.format).to eq([top, middle, bottom])
  end

  it 'can make a string format' do
    translator = Translator.new("hello world")

    expected =
    "0.0.0.0.0....00.0.0.00
    00.00.0..0..00.0000..0
    ....0.0.0....00.0.0..."
    expect(translator.string_format).to eq(expected)
  end


end
