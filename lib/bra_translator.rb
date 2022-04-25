require './lib/eng_dictionary'
require './lib/bra_dictionary'


class BraTranslator
  include BrailleDictionary
  include EngDictionary

  def initialize(input)
    @input = input
    require "pry"; binding.pry
  end

  def format
    array = @input.split
  end
end
