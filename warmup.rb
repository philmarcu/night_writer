file_data = File.open(ARGV[0], 'r')

current_msg = file_data.read

file_data.close

puts current_msg

louder_text = current_msg.upcase

writer = File.open(ARGV[1], 'w')

writer.write(louder_text)

writer.close


# file_data = File.read('quiet.txt')
# ARGV == ['quiet.txt', 'loud.txt']
#
# nu_file_data = File.write('loud.txt', 'quiet.txt')
#
# ARGV[0] = 'quiet.txt'
# ARGV[1] = 'loud.txt'

#file method examples

# def read_write
#   message = "i'm a cool message"
#   File.open("./message.txt", "+a") do |file|
#     file.write(message)
#   end
# end

message = File.open('message.txt', 'r')

# File.foreach("message.txt") {|each_line| puts each_line }







# file_name2 = ARGV[1]
#
#
# # File.open(uppercase_file, 'w')
# lowercase_file = File.open(ARGV[0], 'r')
# p "#{lowercase_file}"
# # handle = File.open(ARGV[0], 'r')
# #
# # incoming_text = handle.read
# #
# # handle.close
# #
# # writer = File.open(ARGV[1], 'w')
