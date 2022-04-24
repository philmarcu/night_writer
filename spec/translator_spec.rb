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
    expect(translator.output_array).to eq(["0.", "00", "..", "0.", ".0", "..", "0.", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "0."])
  end

  it 'can sort lines' do
  end

  it 'can translate_to_braille' do
  end


end
