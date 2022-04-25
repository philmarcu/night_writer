require_relative 'translator'

message = ARGV[0]
msg_file = File.open(ARGV[0], 'r')
bra_file = File.open(ARGV[1], 'w')

content = msg_file.readlines
count = content.join.size

text = content.join
translator = Translator.new(text)
braille = translator.string_format
File.write(ARGV[1], braille)

p "Created #{ARGV[1]} containing #{count} characters"
