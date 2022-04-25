require_relative 'translator'

message = ARGV[0]
msg_file = File.open(ARGV[0], 'r')
bra_file = File.open(ARGV[1], 'w')

content = msg_file.readlines
count = content.join.size #tells me the count for 1st file

text = content.join
translator = Translator.new(text)
braille = translator.string_format
File.write(ARGV[1], braille)
# count = braille.size #they don't want the count of the 2nd file
p "Created #{ARGV[1]} containing #{count} characters"

# translate = Translator.new(file_handler)

# braille_file.write(translate)


# translator = Translator.new(<english_message>)
# braille = translator.translate_to_braille
# File.write(ARGV[1], braille)

# file_writer = FileWriter.new(ARGV[1], 'braille placeholder') #needs the braille argument
# require "pry"; binding.pry
# puts "Created #{ARGV[1]} containing #{count} characters."






# filewriter(arg, data)
# there's an argument(file.write) there are optional arguments for this method


# ARGV == ['message.txt', 'braille.txt']
#
#
# ARGV[0] = 'message.txt'
# ARGV[1] = 'braille.txt'

# file_data = File.open(ARGV[0], 'r')
#
# message = file_data.read
#
# file_data.close
#
# puts current_msg
#
# braille = message.braille_dictionary
#
# writer = File.open(ARGV[1], 'w')
#
# writer.write(louder_text)
#
# writer.close
#
# class NightWriter
#   def print_message
#     file = File.open("message.txt").read
#     puts file
#   end
# end

# NightWriter.new.print_message
