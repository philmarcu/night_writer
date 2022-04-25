require './lib/bra_translator'
require './lib/eng_dictionary'
require './lib/bra_dictionary'

RSpec.describe BraTranslator do
  it 'exists' do
    bra_translator = BraTranslator.new(File.open('bra_goodbye.txt', 'r'))
    expect(bra_translator).to be_an_instance_of(BraTranslator)
  end
end
