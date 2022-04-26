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
      # require "pry"; binding.pry
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
  end



  def count_chars
  end

end


#-- old string_format method #2 -- #
# vert_format = ""
# format.each do |char|
#   vert_format << char.to_s.scan(/.{1,2}/).join("\n")
# require "pry"; binding.pry
# end
# # vert_format.gsub(/[^0.]/, "")

#-- old string_format method #1 --#
# line_one = format[0].to_s.gsub(/[^0.]/, "")
# line_two = format[1].to_s.gsub(/[^0.]/, "")
# line_tres = format[2].to_s.gsub(/[^0.]/, "")
#
# braille_format = "#{line_one}\n"  "#{line_two}\n" "#{line_tres}"

#-current count old method & ideas-#

#current count = 11. 11*3 -- max is 26 * 3 (26 braille pairs)
# count = string_format.length
# require "pry"; binding.pry
# if count > 80
#   puts "\n"
#   #don't think this is actually separating the next braille characters
# end
# count
