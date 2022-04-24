require './lib/translator'
require './lib/eng_dictionary'
require './lib/bra_dictionary'

RSpec.describe Translator do

  it 'exists' do
    translator = Translator.new("hello world")
    expect(translated).to be_an_instance_of(Translator)
  end

  it 'can output an array' do
  end

  it 'can sort lines' do
  end


end
