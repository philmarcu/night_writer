require './lib/eng_dictionary'
require './lib/bra_dictionary'


class BraTranslator
  include BrailleDictionary
  include EngDictionary

  attr_reader :input
  def initialize(input)
    @input = input
  end

  def format
    bra_array = input.split("\n")
    nu_array = bra_array.map do |line|
      line.scan(/../)
    end
    # vert_array = nu_array.transpose
    require "pry"; binding.pry
    # to_eng = vert_array.map do |element|
    #   braille_dictionary[element]
    # end.join
    # to_eng
  end
end
