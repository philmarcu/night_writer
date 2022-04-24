require './lib/eng_dictionary'
require './lib/bra_dictionary'


class Translator
  include BrailleDictionary
  include EngDictionary

  attr_reader :input
  def initialize(input)
    @input = input
  end


  def output_array
    output_array = input.chars.map do |char|
      require "pry"; binding.pry
    end
  end

end
