# assigns comand line argument to variable filename
filename = ARGV.first
# assigns value of $0 to variable script, $0 is a global ruby variable that contains the name of the script being executed 
script = $0

# puts the following strings
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
# gets user input (either cancels cript with CTRL-C or RETURN to continue script)
STDIN.gets

# if user chose to continue...opens file, 'w' - write only, truncating existing file to zero length or creates new file for writing (IO - open modes)
puts "Opening the file..."
target = File.open(filename, 'w')

# truncates the file to be -at most- (target.size) bytes long.  .size aquires the size of the file opened in target variable
# this code is actually unnecesary as the 'w' command used when opening the file already truncated it down to zero
puts "Truncating the file.  Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

# acquires user input and assigns to 3 new variables (line 1-3)
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# writes newly assigned strings stored in line1-3 variables to target file
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# closes target file
puts "And finally, we close it."
target.close()