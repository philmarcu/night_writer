require './lib/eng_dictionary'
require './lib/bra_dictionary'
require './lib/file_handler'


class Translator
  include BrailleDictionary
  include EngDictionary

  attr_reader :input
  def initialize(input)
    @input = input
  end


  def output_arr
    output_arr = input.chars.map do |char|
      eng_dictionary[char]
    end.flatten
  end

  def format
    top = []
    middle = []
    bottom = []

    output_arr.each_with_index do |element, index|
      if (index + 1) % 3 == 0
        bottom << element
      elsif (index + 1) % 3 == 1
        top << element
      else
        middle << element
      end
    end
    [top, middle, bottom]
    # require "pry"; binding.pry
  end

  def string_format
    line_one = format[0].to_s.gsub(/[^0.]/, "")
    line_two = format[1].to_s.gsub(/[^0.]/, "")
    line_tres = format[2].to_s.gsub(/[^0.]/, "")

    braille_format = "#{line_one} \n""#{line_two}\n""#{line_tres}\n"
    # require "pry"; binding.pry
  end

  def count_chars
    require "pry"; binding.pry
  end


end

# format (index +1) lets you divide the indexed positions by 3, taking the 3rd braille keys
# & moving them to the bottom row. Since its based off of the remainder the 1st row
