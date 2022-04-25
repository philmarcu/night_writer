require './lib/eng_dictionary'
require './lib/bra_dictionary'


class BraTranslator
  include BrailleDictionary
  include EngDictionary

  def initialize(input)
    @input = input
  end

  def format
    array = @input.readlines
    require "pry"; binding.pry
  end
end
