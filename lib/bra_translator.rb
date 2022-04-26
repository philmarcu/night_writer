require './lib/eng_dictionary'
require './lib/bra_dictionary'


class BraTranslator
  include BrailleDictionary
  include EngDictionary

  attr_reader :input
  def initialize(input)
    @input = input
  end

  def output_arr
    output_arr = input.chars.map do |char|
      require "pry"; binding.pry
    end

    vert_array = nu_array.transpose
    to_eng = vert_array.map do |element|
      braille_dictionary[element]
    end.join
    to_eng
  end
end
