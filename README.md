# night_writer

## Iteration 1: Creating a Command Line Interface
Write a Ruby program that prints a line to the terminal like the one below:

$ ruby ./lib/night_writer.rb message.txt braille.txt
Created 'braille.txt' containing 256 characters
In the example above:

./lib/night_writer.rb is the path to your Ruby program.
message.txt is the name of an existing text file in your project directory.
braille.txt is the name that we would like to give to a file that we will create in iteration 2.
256 is the count of characters in your message.txt file.
In order to break this problem down further, you may wish to work on things in the following order:

Create a Ruby program that prints the sample line of text provided above no matter what arguments are provided from the command line.
Update your existing program so that the name of the file that it prints out changes based on the second input that the user provides from the command line.
Further update your program so that the number of characters it prints out changes based on the number of characters in the file that the user provides as the first argument that the user provides from the command line.
Iteration 2: Writing Braille
Update your existing program so that you can create a new file containing characters representing Braille.

Braille uses a two-by-three grid of dots to represent characters. We’ll simulate that concept by using three lines of symbols. For example, we are going to represent a h character as follows:

0.
00
..
with a zero in the first position of the first row representing a raised dot, and two zeros in the second row representing two raised dots, and periods in the remaining spaces representing unraised spaces.

Following the same pattern, hello world would be represented as follows:

0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...
You can experiment with converting other words yourself and share some samples with your classmates. Use the lowercase letters a-z here for your project.

Each line of your Braille file should be no wider than 40 Braille characters (80 dots) wide.

In order to break this problem down further, you may wish to work on things in the following order:

Update your existing Ruby program to take the entire message contained in your input file and save it to the output file provided by a user. At this point, do not do any work to translate the message to Braille.
Create a dictionary of some sort that allows you to look up a English letter and find its Braille equivalent.
Update your program to take an input file with a single letter and create an output file with the Braille equivalent.
Update your program again so that it can take multiple letters. Compare results with a classmate.
Update the program so that messages of more than 80 characters are split over multiple lines.
Iteration 3: Writing English Letters
Create a NightReader program that will convert Braille back to English text:

$ ruby ./lib/night_reader.rb braille.txt original_message.txt
Created 'original_message.txt' containing 256 characters.
In order to break this problem down further, you may wish to work on things in the following order:

Using your existing Ruby program as a template, create a new program called NightReader that prints a confirmation message to the terminal that contains the name of the file that the user input as their second argument.
Calculate the number of characters in the file provided as input and include that in the confirmation message.
Create a dictionary that maps some representation of Braille characters to English characters.
Convert a single Braille character contained in your input file into a single English character in your output file.
Convert multiple Braille characters into multiple English characters.
Convert a file containing multiple lines of Braille into English characters.
