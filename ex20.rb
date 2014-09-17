# assings first command line argument to variable input_file
input_file = ARGV[0]

# defines function named print_all with argument "f", if filename given as argument function will print all
def print_all(f)
	puts f.read()
end

# defines function named rewind which accepts a single argument, will seek to a given offset in the stream given value of whence seek(offset, whence=IO::SEEK_SET)
# whence options :
# IO::SEEK_SET - seeks to the absolute location given by _offset_
# IO::SEEK_END - seeks to _offset_ plus end of stream (you probably want a negative value for _offset_)
# IO::SEEK_CUR - seeks to _offset_ plus current poition
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

# defines a function named print_a_line which accepts two arguments line_count & f (filename)
# function will print given value for line_count followed by reading the current_line, which is incremented below
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

# assigns opening of input_file to variable current_file
current_file = File.open(input_file)

puts "First let's print the whole file: "
puts # a blank line

# calls function print_all with argument current_file, prints all contents of file
print_all(current_file)

puts "\nNow let's rewind, kind of like a tape."

# calls reqind function, which brings focus back to absolute position line 0 which was defined in f.seek offset value
rewind(current_file)

puts "\nLet's print three lines: \n"

# initializes current_line variable with value of 1
current_line = 1
# calls print_a_line function for line 1
print_a_line(current_line, current_file)

# increments current_line variable by 1, and calls print_a_line function for new current_line =  2
current_line += 1
print_a_line(current_line, current_file)

# increments current_line variable by 1, and calls print_a_line function for new current_line =  3
current_line += 1
print_a_line(current_line, current_file)