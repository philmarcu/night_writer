require './lib/bra_translator'
require './lib/eng_dictionary'
require './lib/bra_dictionary'

RSpec.describe BraTranslator do
  it 'exists' do
    braille =
    "000.0.000.000....00.0.0.00
    00.0.0.00..0.0..00.0000..0
    ..0.0.....00.....00.0.0..."
    bra_translator = BraTranslator.new(braille)
    expect(bra_translator).to be_an_instance_of(BraTranslator)
  end

  it 'can format to english' do
    braille =
    "000.0.000.000....00.0.0.00
    00.0.0.00..0.0..00.0000..0
    ..0.0.....00.....00.0.0..."
    bra_translator = BraTranslator.new(braille)
    expect(bra_translator.output_arr).to eq("goodbye world")
  end
end
