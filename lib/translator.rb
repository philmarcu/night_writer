require './lib/eng_dictionary'
require './lib/bra_dictionary'

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
  end

  def string_format
    line_one = format[0].to_s.gsub(/[^0.]/, "")
    line_two = format[1].to_s.gsub(/[^0.]/, "")
    line_tres = format[2].to_s.gsub(/[^0.]/, "")

    braille_format = "#{line_one} \n""#{line_two}\n""#{line_tres}\n"
  end

  def count_chars
    count = format[0].size
      if count > 80
        format[0].split
      end
    count
  end
end
