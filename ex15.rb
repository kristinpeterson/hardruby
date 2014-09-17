# Applies vairable name filename to filename input during comand line
filename = ARGV.first

# Assings string "> " to variable prompt
prompt = "> "
# Opens file name, filename = variable that was assigned vaule on command line
txt = File.open(filename)

# Prints string
puts "Here's your file: #{filename}"
# Prints result of read command on txt variable (filename)
puts txt.read()

# Closes txt file
txt.close

# Prints string
 puts "I'll also ask you to type it again:"
# Prints prompt
 print prompt
# Allows user input to be stored into variable file_again (user should input the filename per prompt)
 file_again = STDIN.gets.chomp()

# Assigns the command File.open with parameter file_again (which is user inputed filename) to variable txt_again
txt_again = File.open(file_again)

# Prints the result of reading txt_again variable, which runs the File.open command w/ the filename parameter
puts txt_again.read()

# Closes txt_again file
txt_again.close

# Prints following string
puts "Now to check if the file is closed"
# Prints string and then prints result of inquiry txt.closed? which is true/false response if closed = true if open = false
puts "Is the command line entered filename closed ? : ", txt.closed?

# Prints string and then prints result of inquiry txt_again.closed? which is true/false response if closed = true if open = false
puts "Is the script entered filename closed? : ", txt_again.closed?

# Commands synonymous with Functions or Methods
# 