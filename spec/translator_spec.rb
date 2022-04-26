require './lib/translator'
require './lib/eng_dictionary'
require './lib/bra_dictionary'

RSpec.describe Translator do

  describe 'Iteration II' do
    it 'exists' do
      translator = Translator.new("a")
      expect(translator).to be_an_instance_of(Translator)
    end

    it 'can output an array' do
      translator = Translator.new("a")
      expected = ["0.", "..", ".."]
      expect(translator.output_arr).to eq(expected)
    end

    it 'formats lines' do
      translator = Translator.new("a")
      expected = [["0."], [".."], [".."]]
      expect(translator.format).to eq(expected)
    end


    it 'can make a string format' do
      translator = Translator.new("a")

      expected =
        "0.
        ..
        .."
      expect(translator.string_format).to eq(expected)
    end

    xit 'can count characters' do
      translator = Translator.new("hello world")
      expect(translator.count_chars).to eq(68)
    end
  end


end
