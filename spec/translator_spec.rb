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

  it 'formats lines' do
    translator = Translator.new("hello world")
    expected =
          [["0.", "0.", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", "00"],
          ["00", ".0", "0.", "0.", ".0", "..", "00", ".0", "00", "0.", ".0"],
          ["..", "..", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", ".."]]
    expect(translator.format).to eq(expected)
  end

  xit 'can make a string format' do
    translator = Translator.new("hello world")

    expected =
    "0.0.0.0.0....00.0.0.00
     00.00.0..0..00.0000..0
     ....0.0.0....00.0.0..."
    expect(translator.string_format).to eq(expected)
  end

  it 'can count characters' do
    translator = Translator.new("hello world")
    expect(translator.count_chars).to eq(11)
  end

end
